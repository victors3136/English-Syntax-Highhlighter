@echo off

echo Starting Django server...
start "Django Server" cmd /k "cd server && venv\Scripts\activate && python manage.py runserver"

echo Starting Client server...
start "Client Server" cmd /k "cd client && npm run dev"
