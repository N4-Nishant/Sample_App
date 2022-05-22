@Entry
@Component
struct Index {
  category_scroller: Scroller = new Scroller();
  grid_scroller: Scroller = new Scroller();
  controller: TabsController = new TabsController();

  build() {
    Column({space: 5}) {
      // icon's bar
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.logo")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
        Image($r("app.media.user")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
      }
      .padding({bottom: 20});

      Text("Discover \nour new items.").fontSize(20).fontWeight(FontWeight.Bolder).padding({bottom: 20});

      // search bar
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        TextArea({placeholder: "Search for Products or Brands"}).width(260);
        Image($r("app.media.filtericon")).objectFit(ImageFit.Cover).width(35).height(5).borderWidth(2).borderRadius(5).opacity(0.6);
      }
      .padding({bottom: 20});

      // notification bar
      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Image($r("app.media.unisexshoe")).objectFit(ImageFit.Cover).width(70).height(70).borderWidth(1);
        Column() {
          Text("Running Unisex Shoes").fontSize(16).fontWeight(FontWeight.Bolder).width(130);
          Text("Coming Soon...").fontSize(15).fontWeight(FontWeight.Bolder).fontColor(Color.Blue).width(130);
        }
        .width(130)
        Column() {
          Toggle({ type: ToggleType.Switch, isOn: true }).width(40).height(15);
          Text("Notify Me").fontColor(Color.Gray).fontSize(13);
        }
      }
      .borderWidth(2)
      .borderRadius(10)
      .height(90)
      .margin({bottom: 20});

      // shopping categories
      Text("Categories").fontSize(20).fontWeight(FontWeight.Bolder).margin({bottom: 10});
      Scroll(this.category_scroller) {
        Row({space: 8}) {
          Button("Shoes").backgroundColor(Color.Blue).fontColor(Color.White);
          Button("Table").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Cupboard").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Sofa").backgroundColor("#dcdde0").fontColor(Color.Black);
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 20});

      // items list
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Text("Popular Shoes").fontWeight(FontWeight.Bolder).fontSize(16);
        Row({space: 3}) {
          Text("View All").fontWeight(FontWeight.Bolder).fontSize(16);
          Button(">").padding(0).width(15).height(15).fontColor(Color.White);
        }
      }
      .margin({bottom: 15});
      // items
      Grid(this.grid_scroller) {

        GridItem() {
          Column() {
            Image($r("app.media.Reebok")).objectFit(ImageFit.Cover).width(135).height(130);
            Text("Unisex Reebok Classics").fontWeight(FontWeight.Bolder).fontSize(13);
            Text("₹ 8999").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .backgroundColor("#dcdde1")
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.Brooksmens")).objectFit(ImageFit.Cover).width(135).height(130);
            Text("Brooks Mens Classics").fontWeight(FontWeight.Bolder).fontSize(13);
            Text("₹ 9999").fontWeight(FontWeight.Bolder).fontSize(16);
          }
          .backgroundColor("#dcdde1")
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(0)
      .height(220);

      // navigation bar
      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {
        // navigation buttons
        Column() {
          Image($r("app.media.Home")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Home").fontSize(13);
        }

        Column() {
          Image($r("app.media.Categories")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Categories").fontSize(13);
        }

        Column() {
          Image($r("app.media.Notification")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Notification").fontSize(13);
        }

        Column() {
          Image($r("app.media.Cart")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Cart").fontSize(13);
        }
      }
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30);
  }
}