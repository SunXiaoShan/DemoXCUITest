# iPhone 上，自動化 UITest 簡單範例

早期一開始就有簡單研究 UI 自動化測試，大多數會需要他都是為了使用腳本
自動化來測試 app 流程是否有哪一部份被改壞，而達到減少人工測試的成本， 不同於其他目的，我當初學這個目的反而更單純，
想要寫一份腳本，幫助我操作某些遊戲 app，哈，雖然後來發現不能控制別人的 app = =，
目前實作比較偏寫自動化流程，而檢查，判斷就比較少寫



### Quick tour the page of this project by manual
![Demo](https://github.com/SunXiaoShan/DemoXCUITest/blob/master/demo/QuickTour.gif)



### Auto-UITest Demo by auto-run
![Demo2](https://github.com/SunXiaoShan/DemoXCUITest/blob/master/demo/demo01.gif)


### Fastlane screenshot
<!DOCTYPE html>
<html>
   <body>
      <table>
         <tr>
            <th colspan="16">
               <a id="en-US-iPhone 8 Plus" class="deviceName" href="#en-US-iPhone 8 Plus">iPhone 8 Plus</a>
            </th>
         </tr>
         <tr>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-dismiss%20youtube.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="1">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-hide%20keyboard.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="2">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-press%20ok%20button.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="3">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-sign%20in.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="4">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-sign%20out.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="5">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-swipe%20down%20page.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="6">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-swipe%20up%20page.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="7">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-switch%20to%20library%20page.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="8">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-switch%20to%20people%20page.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="9">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-switch%20to%20play%20video%20index:0.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="10">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-switch%20to%20play%20video%20index:2.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="11">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-switch%20to%20setting%20page.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="12">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-tab%20cell:0.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="13">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-tab%20cell:2.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="14">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-text%20account.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="15">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208%20Plus-text%20password.png" style="width: 100%;" alt="en-US iPhone 8 Plus" data-counter="16">
            </td>
         </tr>
         <tr>
            <th colspan="16">
               <a id="en-US-iPhone 8" class="deviceName" href="#en-US-iPhone 8">iPhone 8</a>
            </th>
         </tr>
         <tr>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-dismiss%20youtube.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="17">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-hide%20keyboard.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="18">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-press%20ok%20button.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="19">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-sign%20in.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="20">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-sign%20out.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="21">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-swipe%20down%20page.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="22">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-swipe%20up%20page.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="23">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-switch%20to%20library%20page.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="24">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-switch%20to%20people%20page.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="25">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-switch%20to%20play%20video%20index:0.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="26">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-switch%20to%20play%20video%20index:2.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="27">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-switch%20to%20setting%20page.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="28">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-tab%20cell:0.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="29">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-tab%20cell:2.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="30">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-text%20account.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="31">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%208-text%20password.png" style="width: 100%;" alt="en-US iPhone 8" data-counter="32">
            </td>
         </tr>
         <tr>
            <th colspan="16">
               <a id="en-US-iPhone X" class="deviceName" href="#en-US-iPhone X">iPhone X</a>
            </th>
         </tr>
         <tr>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-dismiss%20youtube.png" style="width: 100%;" alt="en-US iPhone X" data-counter="33">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-hide%20keyboard.png" style="width: 100%;" alt="en-US iPhone X" data-counter="34">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-press%20ok%20button.png" style="width: 100%;" alt="en-US iPhone X" data-counter="35">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-sign%20in.png" style="width: 100%;" alt="en-US iPhone X" data-counter="36">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-sign%20out.png" style="width: 100%;" alt="en-US iPhone X" data-counter="37">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-swipe%20down%20page.png" style="width: 100%;" alt="en-US iPhone X" data-counter="38">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-swipe%20up%20page.png" style="width: 100%;" alt="en-US iPhone X" data-counter="39">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-switch%20to%20library%20page.png" style="width: 100%;" alt="en-US iPhone X" data-counter="40">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-switch%20to%20people%20page.png" style="width: 100%;" alt="en-US iPhone X" data-counter="41">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-switch%20to%20play%20video%20index:0.png" style="width: 100%;" alt="en-US iPhone X" data-counter="42">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-switch%20to%20play%20video%20index:2.png" style="width: 100%;" alt="en-US iPhone X" data-counter="43">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-switch%20to%20setting%20page.png" style="width: 100%;" alt="en-US iPhone X" data-counter="44">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-tab%20cell:0.png" style="width: 100%;" alt="en-US iPhone X" data-counter="45">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-tab%20cell:2.png" style="width: 100%;" alt="en-US iPhone X" data-counter="46">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-text%20account.png" style="width: 100%;" alt="en-US iPhone X" data-counter="47">
            </td>
            <td>
               <img class="screenshot" src="https://github.com/SunXiaoShan/DemoXCUITest/blob/master/screenshots/en-US/iPhone%20X-text%20password.png" style="width: 100%;" alt="en-US iPhone X" data-counter="48">
            </td>
         </tr>
      </table>
   </body>
</html>
