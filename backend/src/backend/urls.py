from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('backend/admin/', admin.site.urls),
    path('backend/', include('app.urls'))
]
