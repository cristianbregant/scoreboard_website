# Scoreboard website

The public landing page of [Scoreboard](../scoreboard), for prospective customers. It is written in Italian and built with [Jaspr](https://jaspr.site) in static mode: the build is plain HTML and CSS, with no JavaScript, and can be hosted anywhere (GitHub Pages, Netlify, Cloudflare Pages, an S3 bucket…).

## Development

Requires the Dart SDK and the Jaspr CLI (`dart pub global activate jaspr_cli`).

```sh
dart pub get
jaspr serve        # http://localhost:8080, reloads on changes
jaspr build        # writes the site to build/jaspr
```

## Publishing

[.github/workflows/deploy.yml](.github/workflows/deploy.yml) builds the site and publishes it on GitHub Pages at every push to `main`, at `https://<owner>.github.io/<repo>/`. The workflow passes that address to the build as `SITE_URL`, which sets the base path of every link and the absolute URLs of the social previews.

One-time setup: in the repository on GitHub, *Settings → Pages → Build and deployment → Source*: **GitHub Actions**. The repository must be public on a free plan.

To build for another address (a custom domain, another host):

```sh
jaspr build --dart-define=SITE_URL=https://example.com
```

`contactEmail` in [lib/constants/site.dart](lib/constants/site.dart) is where *Richiedi una demo* sends people.

## Structure

```
lib/
├── main.server.dart   the document: title, meta tags, fonts, stylesheet
├── app.dart           the page, section by section
├── sections/          hero, recognition types, features, console, gallery, steps, quality, FAQ, call to action
├── components/        header, footer, section titles, screenshots, icons
└── constants/site.dart
web/
├── styles.css         every style, with the app's colors as variables
├── favicon.svg
└── images/            screenshots of the app and the social preview
```

The screenshots in `web/images/screens` are JPEG copies of `scoreboard/docs/images`, resized to 1600 px. After updating the app's screenshots, copy them again:

```sh
for f in ../scoreboard/docs/images/*.png; do
  sips -s format jpeg -s formatOptions 82 --resampleWidth 1600 "$f" --out "web/images/screens/$(basename "${f%.png}").jpg"
done
```
