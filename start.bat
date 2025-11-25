@echo off
echo Installing requirements...
pip install -r requirements.txt

echo.
echo Building MkDocs site...
mkdocs build

echo.
echo Starting the authenticated documentation server...
echo Access the documentation at: http://localhost:5000
echo.
echo Demo credentials:
echo Username: admin / Password: admin123
echo Username: user / Password: user123
echo.
python main.py