import 'package:flutter/material.dart';

Widget fontsToggle({
  fonteum,
  fontedois,
  fontetres,
  fontequatro,
  fontecinco,
}) {
  return SizedBox(
    child: Column(
      children: [
        const Text("Fontes:"),
        fonteum != ""
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  side: MaterialStateProperty.all(
                    BorderSide(width: 1, color: Colors.grey.shade700),
                  ),
                ),
                child: Text(
                  fonteum,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              )
            : const SizedBox(),
        fontedois != ""
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  side: MaterialStateProperty.all(
                    BorderSide(width: 1, color: Colors.grey.shade700),
                  ),
                ),
                child: Text(
                  fontedois,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              )
            : const SizedBox(),
        fontetres != ""
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  side: MaterialStateProperty.all(
                    BorderSide(width: 1, color: Colors.grey.shade700),
                  ),
                ),
                child: Text(
                  fontetres,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              )
            : const SizedBox(),
        fontequatro != ""
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  side: MaterialStateProperty.all(
                    BorderSide(width: 1, color: Colors.grey.shade700),
                  ),
                ),
                child: Text(
                  fontequatro,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              )
            : const SizedBox(),
        fontecinco != ""
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  side: MaterialStateProperty.all(
                    BorderSide(width: 1, color: Colors.grey.shade700),
                  ),
                ),
                child: Text(
                  fontecinco,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              )
            : const SizedBox(),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 30)),
            side: MaterialStateProperty.all(
              BorderSide(width: 1, color: Colors.grey.shade700),
            ),
          ),
          child: const Text(
            "https://www.recicladarte.com/",
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black38,
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    ),
  );
}
