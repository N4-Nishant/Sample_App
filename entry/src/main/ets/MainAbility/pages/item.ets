@Preview
@Entry
@Component
struct Item {
  desc_scroller: Scroller = new Scroller();
  size_scroller: Scroller = new Scroller();

  build() {
    Column({space: 20}) {
      // header
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("<").backgroundColor("#dcdde0").fontColor(Color.Black);
        Text("Detail").fontWeight(FontWeight.Bolder).fontSize(30);
        Image($r("app.media.menuicon")).objectFit(ImageFit.Cover).width(30).height(30);
      }

      // item details
      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.Reebok")).objectFit(ImageFit.Cover).width(312).height(200);
        // review and ratings
        Column({space: 5}) {
          Row({space: 5}) {
            Image($r("app.media.staricon")).width(30).height(30);
            Text("4.6").fontWeight(FontWeight.Bolder).fontSize(20);
          }
          Text("3k reviews");
        }
        .backgroundColor("#dcdde1")
        .borderRadius(10)
        .borderWidth(5)
        .borderColor(Color.White);
      }
      .width(320)
      .borderWidth(3)
      .borderRadius(20);

      Text("Unisex Reebok Classics").fontWeight(FontWeight.Bolder).fontSize(25).width(200);
      Text("₹ 8999").fontWeight(FontWeight.Bolder).fontSize(18).width(200);

      // item description
      Scroll(this.desc_scroller) {
        Text("Step into the future fearlessly in these Reebok shoes. The running-inspired shoes have a breathable mesh upper with built-in zones of support for lasting comfort. Lightweight Floatride Fuel cushioning wrapped in a Zig Energy Shell unleashes a wave of energy. The Zig Energy Web outsole gives you a snappy ride. A bold zigzag midsole adds progressive style.")
          .fontColor("#dcdde1")
          .fontSize(15);
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .height(70);

      // item availabilities
      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Text("Color ").fontSize(20);
        Column() {
          Radio({group: "Color", value: "Black"});
          Text("Black").fontColor(Color.Black).fontSize(12)
        }
        Column() {
          Radio({group: "Color", value: "Blue"});
          Text("Blue").fontColor(Color.Blue).fontSize(12)
        }
        Column() {
          Radio({group: "Color", value: "Pink"});
          Text("Pink").fontColor(Color.Pink).fontSize(12)
        }
        Counter() {
          Text("1").fontColor(Color.White);
        }
        .backgroundColor(Color.Blue)
      }

      // filters
      Text("Available Sizes").fontSize(15).fontWeight(FontWeight.Bolder);
      Scroll(this.size_scroller) {
        Row({space: 8}) {
          Button("6 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(12);
          Button("7 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(12);
          Button("8 inches").backgroundColor(Color.Blue).fontColor(Color.White).fontSize(12);
          Button("9 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(12);
        }
        .height(25);
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On);

      // add to favourite and add to cart
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Row() {
          Text("Add to favourite").fontSize(15).fontColor(Color.White);
          Image($r("app.media.Favoriteicon")).objectFit(ImageFit.Cover).width(20).height(20);
        }
        .backgroundColor(Color.Blue)
        .borderWidth(3)
        .borderRadius(10);
        Row() {
          Text("Add to cart").fontSize(15).fontColor(Color.White);
          Image($r("app.media.Cart")).objectFit(ImageFit.Cover).width(20).height(20);
        }
        .backgroundColor(Color.Blue)
        .borderWidth(3)
        .borderRadius(10);
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}