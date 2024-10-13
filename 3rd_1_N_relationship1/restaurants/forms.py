from django import forms
from .models import Restaurant, Menu


class RestaurantForm(forms.ModelForm):
    
    class Meta:
        model = Restaurant
        fields = '__all__'

        widgets = {
            'category': forms.Select(attrs={'class': 'form-control'}),
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': '레스토랑 이름을 입력하세요'}),
            'Descriptions': forms.Textarea(attrs={'class': 'form-control', 'rows': 4, 'placeholder': '설명을 입력하세요'}),
            'address': forms.TextInput(attrs={'class': 'form-control', 'placeholder': '주소를 입력하세요'}),
            'opening_time': forms.TimeInput(attrs={'class': 'form-control', 'type': 'time'}),
            'closing_time': forms.TimeInput(attrs={'class': 'form-control', 'type': 'time'}),
        }

class MenuForm(forms.ModelForm):
    
    class Meta:
        model = Menu
        exclude = ('restaurant', )

        widgets = {
            'name' : forms.TextInput(attrs={
                'class' : 'form-control'
            }),
            'price' : forms.TextInput(attrs={'class' : 'form-control'})
        }
class MenuUpdateForm(forms.ModelForm):

    class Meta:
        model = Menu
        exclude = ('restaurant', 'name',)

        widgets = {
            'price' : forms.TextInput(attrs={'class' : 'form-control'})
        }