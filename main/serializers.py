from rest_framework.serializers import ModelSerializers
from .models import Category, Product

class Categoryserializer(ModelSerializer):
    class Meta:
        model=Category
        fields='__all__'

class ProductSerializer(ModelSerializer):
    class Mets:
        model=Productfields='__all__'