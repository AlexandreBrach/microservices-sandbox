from django.http import JsonResponse
from django.shortcuts import render


# Create your views here.
def ping(request):
    'simpliest response'

    return JsonResponse({'response:': 'PONG'})
