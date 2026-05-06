import router from '@ohos.router';

@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        // Photos profil
        /*Image($r('app.media.profile'))
          .width(120)
          .height(120)
          .borderRadius(60)
          .border({ width: 4, color: Color.White })
          .objectFit(ImageFit.Cover)
          .shadow({
            radius: 20,
            color: '#33000000',
            offsetX: 0,
            offsetY: 8
          })*/

        // Name
        Text('Kelvin Herwanda Tandrio')
          .fontSize(26)
          .fontWeight(FontWeight.Bold)
          .fontColor('#1E293B')
          .margin({ top: 20 })

        Divider()
          .strokeWidth(1.5)
          .width('60%')
          .color('#CBD5E1')
          .margin({ top: 12, bottom: 12 })

        // Tagline / description
        Text('Hello World!')
          .fontSize(18)
          .fontColor('#475569')
          .margin({ bottom: 4 })

        Text('Mobile Developer • UI/UX Enthusiast')
          .fontSize(14)
          .fontColor('#64748B')
          .maxLines(2)
          .textAlign(TextAlign.Center)
          .padding({ left: 20, right: 20 })

        // Info kontak sederhana (opsional)
        Row() {
          Image($r('sys.symbol.phone')) // Icon
            .width(18)
            .height(18)
            .fillColor('#3B82F6')
          Text('+62 812-3456-7890')
            .fontSize(14)
            .fontColor('#475569')
            .margin({ left: 6 })
        }

        Button('Lihat Detail')
          .fontSize(16)
          .backgroundColor('#3B82F6')
          .borderRadius(12)
          .padding({ left: 24, right: 24, top: 10, bottom: 10 })
          .margin({ top: 24 })
          .onClick(() => {
            // Pindah ke SecondPage
            router.pushUrl({
              url: 'pages/SecondPage',
              params: {
                from: 'IndexPage',
                userName: 'Kelvin Herwanda Tandrio'
              }
            });
          })

        .margin({ top: 20 })

      }
      .width('88%')
      .padding({ top: 30, bottom: 30, left: 20, right: 20 })
      .borderRadius(24)
      .backgroundColor(Color.White)
      .shadow({
        radius: 30,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 12
      })
      .alignItems(HorizontalAlign.Center)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .linearGradient({
      direction: GradientDirection.Bottom,
      colors: [['#E0E7FF', 0], ['#C7D2FE', 1]]
    })
  }
}