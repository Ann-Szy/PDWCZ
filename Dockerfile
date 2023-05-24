# Pobranie obrazu bazowego Pythona
FROM python:3.9

# Utworzenie i ustawienie katalogu roboczego w kontenerze
WORKDIR /app

# Skopiowanie plików app.py i requirements.txt do katalogu roboczego w kontenerze
COPY app.py requirements.txt /app/

# Instalacja zależności
RUN pip install --no-cache-dir -r requirements.txt

# Ustawienie zmiennej środowiskowej FLASK_APP na app.py
ENV FLASK_APP=app.py

# Otwarcie portu 5000 na kontenerze
EXPOSE 5000

# Uruchomienie aplikacji Flask
CMD ["flask", "run", "--host=0.0.0.0"]
