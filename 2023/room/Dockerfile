FROM nginx:1.23.2-alpine AS runner
ARG commitId
LABEL commitId="${commitId}" \
      maintainer="jeyrce<jeyrce@gmail.com>" \
      gitRepo="https://github.com/jeyrce/vv-happy-birthday" \
      desc="送给一个美丽端庄的女孩，祝你生日快乐"
WORKDIR /vv-happy-birthday
COPY . .
#COPY --from=builder /vv-happy-birthday/index.html .
RUN mv nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD /usr/sbin/nginx -c /etc/nginx/nginx.conf
