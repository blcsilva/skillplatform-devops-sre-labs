from http.server import BaseHTTPRequestHandler, HTTPServer
import random

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == "/metrics":
            value = random.randint(1, 9)
            body = f"demo_http_requests_total {value}\ndemo_http_errors_total {value // 4}\n"
        else:
            body = "demo app ok\n"
        self.send_response(200)
        self.end_headers()
        self.wfile.write(body.encode())

HTTPServer(("0.0.0.0", 8088), Handler).serve_forever()
