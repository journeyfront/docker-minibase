[![Docker Repository on Quay](https://quay.io/repository/journeyfront/minibase/status "Docker Repository on Quay")](https://quay.io/repository/journeyfront/minibase)

minibase(8) -- the alpine linux base for you
============================================

minibase(8) doesn't do much on its own, but provides a minimal, stable base to
build upon. This image is based on [`gliderlabs/alpine`] plus a small collection
of life-enhancing utilities:

- [dumb-init(1)]
- make(1)

[`gliderlabs/alpine`]: http://gliderlabs.viewdocs.io/docker-alpine/
[dumb-init(1)]: https://github.com/Yelp/dumb-init#readme

## example

```
FROM quay.io/journeyfront/minibase:0.2
RUN make all
ENTRYPOINT ["/bin/dumb-init", "/path/to/my/entrypoint"]
```
