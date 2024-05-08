// xxx.ets
import web_webview from '@ohos.web.webview';

@Entry
@Component
struct WebComponent {
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

  build() {
    Column() {
      Button('重新加载')
        .onClick(() => {
          try {
            this.webviewController.loadUrl('http://remedgit.github.io');
          } catch (error) {
            console.error(`ErrorCode: ${error.code},  Message: ${error.message}`);
          }
        })
      Web({ src: 'http://remedgit.github.io', controller: this.webviewController})
    }
  }
}