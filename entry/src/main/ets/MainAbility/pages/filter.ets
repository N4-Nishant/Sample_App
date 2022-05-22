@Preview
@Entry
@Component
struct Filter {
  size_scroller: Scroller = new Scroller();
  category_list: SelectOption[] = [
    {value: "Select Category", icon: $r("app.media.icon")},
    {value: "Category A", icon: $r("app.media.icon")},
    {value: "Category B", icon: $r("app.media.icon")},
    {value: "Category C", icon: $r("app.media.icon")}
  ];
  brand_list: SelectOption[] = [
    {value: "Select Brand", icon: $r("app.media.icon")},
    {value: "Brand 1", icon: $r("app.media.icon")},
    {value: "Brand 2", icon: $r("app.media.icon")},
    {value: "Brand 3", icon: $r("app.media.icon")}
  ];

  build() {
    Column({space: 20}) {
      Column({space: 20}) {
        // Header
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Button("<").backgroundColor("#dcdde1").fontColor(Color.Black);
          Text("Filter").fontWeight(FontWeight.Bolder).fontSize(30);
          Image($r("app.media.menuicon")).objectFit(ImageFit.Cover).width(30).height(30);
        }

        // Gender filter
        Text("Gender").fontSize(25).fontWeight(FontWeight.Bolder);
        Row() {
          Row({ space: 8 }) {
            Button("Male").backgroundColor(Color.Blue).fontColor(Color.White).fontSize(20);
            Button("Female").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(20);
            Button("Both").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(20);
          }
          .height(25);
        }

        // Category filter
        Text("Category").fontSize(25).fontWeight(FontWeight.Bolder);
        Select(this.category_list)
          .selected(0)
          .width(320)
          .height(45)
          .backgroundColor("#dcdde1")
          .borderRadius(20);

        // Brand filter
        Text("Brand").fontSize(25).fontWeight(FontWeight.Bolder);
        Select(this.brand_list)
          .selected(0)
          .width(320)
          .height(45)
          .backgroundColor("#dcdde1")
          .borderRadius(20);

        // Price filter
        Text("Price").fontSize(25).fontWeight(FontWeight.Bolder);
        Column() {
          Text("₹ 5000").fontSize(18).fontWeight(FontWeight.Bolder);
          Slider({
            value: 5000,
            min: 1000,
            max: 10000,
            step: 1000,
            style: SliderStyle.InSet
          });
        }
        .alignItems(HorizontalAlign.Start)

        // Size filter
        Text("Sizes").fontSize(25).fontWeight(FontWeight.Bolder);
        Scroll(this.size_scroller) {
          Row({ space: 8 }) {
            Button("6 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(18);
            Button("7 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(18);
            Button("8 inches").backgroundColor(Color.Blue).fontColor(Color.White).fontSize(18);
            Button("9 inches").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(18);
          }
          .height(25);
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);
      }
      .alignItems(HorizontalAlign.Start);

      // Clear and Add options
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button("Clear All").backgroundColor("#dcdde1").fontColor(Color.Black).fontSize(18);
        Button("Add").fontSize(18);
      }
      .margin({top: 40});
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}