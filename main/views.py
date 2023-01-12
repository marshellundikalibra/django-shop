from django.shortcuts import render

from rest_framework.viewsets import ModelViewSet
from .serializers import Categoryserializer, ProductSerializer
from .models import Category, Product

class CategoryViewSet(ModelViewSet):
    queryset=Category.objects.all()
    serializer_class=Categoryserializer

class ProductViewSet(ModelViewSet):
    queryset=Product.objects.all()
    serializer_class=ProductSerializer
