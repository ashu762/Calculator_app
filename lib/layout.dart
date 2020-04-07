import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Layout extends StatelessWidget {
  var p = TextEditingController();
  Layout(this.p);

  void changeInput(String s) {
    p.text = p.text + s;
    p.selection =
        TextSelection.fromPosition(TextPosition(offset: p.text.length));
  }

  void solve() {
    Parser pa = Parser();
    Expression exp = pa.parse(p.text);
    ContextModel cm = ContextModel();
    p.text = exp.evaluate(EvaluationType.REAL, cm).toString();
    p.selection =
        TextSelection.fromPosition(TextPosition(offset: p.text.length));
  }

  void removeElement() {
    int currCursor = p.selection.start;
    var ashutosh = p.text;
    p.text = ashutosh.substring(0, currCursor - 1) +
        ashutosh.substring(currCursor, ashutosh.length);
    p.selection =
        TextSelection.fromPosition(TextPosition(offset: currCursor - 1));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        MaterialButton(
          child: Text(
            '(',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('('),
        ),
        MaterialButton(
          child: Text(
            ')',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput(')'),
        ),
        MaterialButton(
          child: Text(
            '*',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('*'),
        ),
        MaterialButton(
          child: Text(
            '/',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('/'),
        ),
        MaterialButton(
          child: Text(
            '7',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('7'),
        ),
        MaterialButton(
          child: Text(
            '8',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('8'),
        ),
        MaterialButton(
          child: Text(
            '9',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('9'),
        ),
        MaterialButton(
          child: Text(
            '-',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('-'),
        ),
        MaterialButton(
          child: Text(
            '4',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('4'),
        ),
        MaterialButton(
          child: Text(
            '5',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('5'),
        ),
        MaterialButton(
          child: Text(
            '6',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('6'),
        ),
        MaterialButton(
          child: Text(
            '+',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('+'),
        ),
        MaterialButton(
          child: Text(
            '1',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('1'),
        ),
        MaterialButton(
          child: Text(
            '2',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('2'),
        ),
        MaterialButton(
          child: Text(
            '3',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('3'),
        ),
        MaterialButton(
          child: Icon(
            Icons.backspace,
            color: Colors.orange,
          ),
          onPressed: () => removeElement(),
        ),
        MaterialButton(
          child: Text(
            '.',
            style: TextStyle(fontSize: 40, color: Colors.orange),
          ),
          onPressed: () => changeInput('.'),
        ),
        MaterialButton(
          child: Text(
            '0',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () => changeInput('0'),
        ),
        MaterialButton(
          child: Text(
            '%',
            style: TextStyle(fontSize: 25, color: Colors.orange),
          ),
          onPressed: () => changeInput('%'),
        ),
        MaterialButton(
          child: Container(
            child: Text(
              '=',
              style: TextStyle(fontSize: 25, color: Colors.orange),
            ),
          ),
          onPressed: () => solve(),
        ),
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 6 / 5,
        crossAxisSpacing: 30,
        mainAxisSpacing: 10,
      ),
    );
  }
}
