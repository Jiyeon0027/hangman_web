# Python 3.11 베이스 이미지 사용
FROM python:3.11-slim

COPY . /app
# 작업 디렉토리 설정
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

# Flask 앱이 모든 인터페이스에서 접근 가능하도록 설정
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=4000

# 포트 4000 노출
EXPOSE 4000

# Flask 애플리케이션 실행
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]

