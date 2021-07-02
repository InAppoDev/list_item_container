var boxWidth = MediaQuery.of(context).size.width * 0.4;
  var boxHeight = MediaQuery.of(context).size.height * 0.35;
  return Padding(
    padding: const EdgeInsets.fromLTRB(10,20,10,10),
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context){
            return page;
          })
        );
      },
      child: Container(
        decoration: standartDecoration(ColorConstants.backgroundColor),
        width: boxWidth,
        height: boxHeight,
        child: Column(
          children: [
            Container(
              width: boxWidth*0.85,
              height: boxWidth*0.85,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(imageUrl)),
            ),
            Padding(
              padding: EdgeInsets.only(left: boxWidth * 0.1,top:5.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15),
                  )),
            )
          ],
        ),
      ),
    ),
  );
