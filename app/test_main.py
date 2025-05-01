def test_read_root_with_requests():
    import requests
    
    # Use requests to send a GET request to the root endpoint
    response = requests.get("http://127.0.0.1:8000/")
    
    # Assert the response status code is 200
    assert response.status_code == 200
    
    # Assert the response JSON matches the expected output
    assert response.json() == {"message": "Olá, Mundo! eu sou projeto !TEMPLATE_NAME!."}
