from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, docker! I am deployed by CircleCI :)")
