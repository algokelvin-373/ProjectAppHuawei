import router from '@ohos.router';

interface ParamsFromIndex {
  from: string;
  userName: string;
}

@Entry
@Component
struct SecondPage {
  private params: ParamsFromIndex = router.getParams() as ParamsFromIndex;

  @State fromPage: string = this.params?.from ?? 'tidak diketahui';
  @State userName: string = this.params?.userName ?? 'Pengguna';

  build() {
    Column() {
      Text(`Halo, ${this.userName}!`)
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 8 })

      Text(`Datang dari: ${this.fromPage}`)
        .fontSize(16)
        .fontColor('#666')
        .margin({ bottom: 20 })

      // Tombol kembali (opsional, ada juga tombol back default di perangkat)
      Button('Kembali')
        .onClick(() => {
          router.back(); // kembali ke halaman sebelumnya
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}