from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, training! I am deployed from CircleCI :)")
