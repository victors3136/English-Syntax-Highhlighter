IF NOT EXIST "server\venv\" (
    echo Creating Python virtual environment...
    cd server
    python -m venv venv
    echo Activating virtual environment...
    venv\Scripts\activate
    echo Installing dependencies from requirements.txt...
    pip install -r requirements.txt
    echo Downloading spaCy model...
    python -m spacy download en_core_web_sm
    deactivate
    cd ..
)

echo Installing client dependencies...
cd client
npm install
cd ..
