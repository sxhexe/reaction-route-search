from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def result(request):
    import reactionroute
    import logging
    import os
    import re
    logging.basicConfig(filename = "result", level=logging.INFO)
    reactant = request.POST["reactant"]
    product = request.POST["product"]
    if isinstance(reactant, unicode):
        reactant = reactant.encode("ascii")
    if isinstance(product, unicode):
        product = product.encode("ascii")
    rr = reactionroute.ReactionRoute(reactantString=reactant, productString=product)
    head, target= rr.isomerSearch()
    rr.printTextReactionMap(head)
    rr.printGraphicReactionMap(head)
    os.system("dot -Tsvg dot/dot.gv -o reaction-"+reactant+".svg")
    paths = []
    rr.findDfsPath(head, target, paths, rr.targetLeastStep)
    rr.printGraphicPathMap(paths)
    os.system("dot -Tsvg dot/paths.gv -o paths-"+reactant+".svg")
    pathsSvgFile = open("paths-"+reactant+".svg",'r')
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

