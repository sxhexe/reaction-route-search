from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def result(request):
    import reactionroute
    import logging
    import os
    import re
    trueFalse = {u'Yes': True, u'No': False, u'yes': True, u'no': False, u'y': True, u'n': False}
    logging.basicConfig(filename = "result", level=logging.INFO)
    reactant = request.POST["reactant"]
    product = request.POST["product"]
    print request.POST
    if isinstance(reactant, unicode):
        reactant = reactant.encode("ascii")
    if isinstance(product, unicode):
        product = product.encode("ascii")
    rr = reactionroute.ReactionRoute(reactantString=reactant, productString=product)

    rr._maxStep = int(request.POST['maxStep'])
    rr._maxExtraStep = int(request.POST['maxExtraStep'])
    rr._structureScreen = trueFalse[request.POST['structureScreen']]
    rr._doPathCalculation = trueFalse[request.POST['doCalculation']]
    if rr._doPathCalculation:
        rr._energyScreen = trueFalse[request.POST['energyScreen']]
        rr._gaussianKeywords = request.POST['energyKeywords'].encode('ascii')
        rr._doTs = trueFalse[request.POST['findTs']]
    if rr._energyScreen:
        rr._intermediateThresh = float(request.POST['intermEnergyThresh'])
    if rr._doTs:
        rr._tsThresh = float(request.POST['tsEnergyThresh'])
        rr._gaussianTsKeywords = request.POST['tsKeywords'].encode('ascii')

    head, target= rr.isomerSearch()
    rr.printTextReactionMap(head)
    paths = []
    rr.findDfsPath(head, target, paths, rr.targetLeastStep)

    rr.labelPathItems(paths, head)
    if rr._doTs:
        rr.findTsOnPath(head)

    rr.printGraphicReactionMap(head)
    os.system("dot -Tsvg dot/dot.gv -o reaction-"+reactant+".svg")

    pathsSvgFile = open("reaction-"+reactant+".svg",'r')
    for i in range(6):
        pathsSvgFile.readline()
    pathsSvg = pathsSvgFile.read()
    pathsSvg = pathsSvg.replace('search', '')
    resultHtml = '<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><title>Global reaction route search result</title><head><body>' + pathsSvg + '</body>'
    resultHtmlFile = open('search/templates/result.html', 'w')
    resultHtmlFile.write(resultHtml)
    resultHtmlFile.close()
    return render(request, 'result.html', {
        'reactant': reactant,
        'product': product,
        'svgString': pathsSvg,
        }
    )
