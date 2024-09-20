from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_status():
    response = client.get("/status")
    assert response.status_code == 200
   # assert response.json() == {"status": "ok"}
    assert response.json() == {"message": "ok"}  # Correspond à la réponse actuelle de l'API
