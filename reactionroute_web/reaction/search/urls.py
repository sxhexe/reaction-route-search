from django.conf.urls import url
from django.views.generic import TemplateView

from . import views


urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'result', views.result, name='result'),
    # url(r'^ketcher-master/ketcher\.html', TemplateView.as_view(template_name='ketcher-master/ketcher.html'), name='ketcher'),
    # url(r'^ketcher-master/ketcher\.html', views.ketcher, name='ketcher'),
    # url(r'\.(js|css|png|gjf)$', 
]
