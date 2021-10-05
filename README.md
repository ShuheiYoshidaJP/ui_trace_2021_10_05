# ui_trace_2021_10_05

<img width="262" alt=" 2021-10-05 15 13 27" src="https://user-images.githubusercontent.com/62702170/135970109-06ef49c8-940e-458e-9dc5-b68c6777cc09.png">


## Component

### SwitchCard

<img width="350" alt=" 2021-10-05 15 23 56" src="https://user-images.githubusercontent.com/62702170/135971170-c47b23e7-f326-4788-baa0-80a16e2be0da.png">

``` dart
class SwitchCard extends StatefulWidget {
  final String title;
  final String description;

  const SwitchCard({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _SwitchCardState createState() => _SwitchCardState();
}

class _SwitchCardState extends State<SwitchCard> {
  bool _active = false;

  void _changeSwitch(bool e) => setState(() => _active = e);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),

                Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          CupertinoSwitch(value: _active, onChanged: _changeSwitch)
        ],
      ),
    );
  }
}
```

### WideWidthButton

<img width="347" alt=" 2021-10-05 15 24 52" src="https://user-images.githubusercontent.com/62702170/135971251-e15acd0c-ac3b-43c7-b69c-fcb79cf8d90d.png">

``` dart
class WideWidthButton extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final void Function() tapped;

  const WideWidthButton({Key? key, required this.text, required this.textColor, required this.backgroundColor, required this.tapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: double.infinity, height: 50),
      child: ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          onPrimary: textColor,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: tapped,
      ),
    );
  }
}
```