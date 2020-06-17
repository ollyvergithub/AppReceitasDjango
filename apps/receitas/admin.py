from django.contrib import admin
from django.utils.html import format_html
from .models import Receita

class ListandoReceitas(admin.ModelAdmin):
    list_display = ('id', 'nome_receita', 'categoria', 'tempo_preparo', 'publicada', 'thumbnail')
    list_display_links = ('id', 'nome_receita')
    search_fields = ('nome_receita',)
    list_filter = ('categoria',)
    list_editable = ('publicada','tempo_preparo')
    list_per_page = 10

    def thumbnail(self, obj):
        if obj.foto_receita:
            return format_html('<img src="{}" style="width: 50px"/>'.format(obj.foto_receita.url))

    thumbnail.short_description = 'Imagem'


admin.site.register(Receita, ListandoReceitas)
