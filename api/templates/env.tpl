{{ define "env.file" }}

DATABASE_URL=mysql://{{ .Values.mysql.user }}:{{ .Values.mysql.password }}@{{ .Values.mysql.host }}:3306/{{ .Values.mysql.db }}
DATABASE_NAME={{ .Values.mysql.db }}
DATABASE_USER={{ .Values.mysql.user }}
DATABASE_PASSWORD={{ .Values.mysql.password }}
DATABASE_HOST={{ .Values.mysql.host }}
DATABASE_PORT=3306

REDIS_URL=redis://{{ .Values.redis.host }}/1

API_KEY={{ .Values.api.key }}
API_SECRET={{ .Values.api.secret }}

WEB_URL={{ .Values.web.url }}

{{ end }}