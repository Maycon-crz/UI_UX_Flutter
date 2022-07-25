import 'package:exemplo_de_expansionpanellist_com_api/modules/components/cached_image.dart';
import 'package:flutter/cupertino.dart';

Widget imagensComponent(
  imgum,
  imgdois,
  imgtres,
  imgquatro,
  imgcinco,
) {
  return Column(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Hero(
              tag: "Imagem",
              child: CachedImage(
                circular: true,
                url: "https://www.recicladarte.com/theme/img/posts/${imgum!}",
              ),
            ),
            imgdois! != ""
                ? Hero(
                    tag: "Imagem",
                    child: CachedImage(
                      circular: true,
                      url:
                          "https://www.recicladarte.com/theme/img/posts/${imgdois!}",
                    ),
                  )
                : const SizedBox(),
            imgtres! != ""
                ? Hero(
                    tag: "Imagem",
                    child: CachedImage(
                      circular: true,
                      url:
                          "https://www.recicladarte.com/theme/img/posts/${imgtres!}",
                    ),
                  )
                : const SizedBox(),
            imgquatro! != ""
                ? Hero(
                    tag: "Imagem",
                    child: CachedImage(
                      circular: true,
                      url:
                          "https://www.recicladarte.com/theme/img/posts/${imgquatro!}",
                    ),
                  )
                : const SizedBox(),
            imgcinco! != ""
                ? Hero(
                    tag: "Imagem",
                    child: CachedImage(
                      circular: true,
                      url:
                          "https://www.recicladarte.com/theme/img/posts/${imgcinco!}",
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    ],
  );
}
