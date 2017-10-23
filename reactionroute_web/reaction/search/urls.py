from django.conf.urls import url
from django.views.generic import TemplateView

from . import views


urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'result', views.result, name='result'),
    url(r'demo', views.demo, name='demo'),
]
