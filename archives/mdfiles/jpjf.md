<!-- // 1.针对某个内容session，可以通过关键字把它给聚集，基于这个内容session的进度，提醒推送。

// 基于ionic开发的文章
// http://blog.csdn.net/i348018533/article/details/47258449

// ionic针对移动端编译了一套样式库，angularjs -->

    <span id="result_box" class="" lang="ja">
    <span class="trans-target-highlight">私の名前は</span>
    <span class="">三木</span>
    <span class="">です</span>
    <span class="">。</span>
    <span class="">私は</span>
    <span class="">茨城県</span>
    <span class="">に住んでいます。</span>
    <span class="">私が</span>
    <span class="">専攻し</span>
    <span class="">、</span>
    <span class="">大学</span>
    <span class="">研究</span>
    <span class="">管理</span>
    <span class="">していました</span>
    <br><span class="">マーケティング</span>
    <span>。</span>
    <span class="">私は、</span>
    <span class="">広告</span>
    <span class="">に関する論文</span>
    <span>を</span>
    <span>書いています。</span>
    <span class="">大学</span>
    <span class="">に加えて</span>
    <span>、</span>
    <br><span>私も</span>
    <span>外国</span>
    <span class="">に興味を持っています。</span>
    <span>私は</span>
    <span>イタリア</span>
    <span>、</span>
    <span>タイ</span>
    <span class="">、オーストラリア、</span>
    <span class="">に行ったことがあります</span>
    <br><span class="">トルコ</span>
    <span>、</span>
    <span class="">私は</span>
    <span class="">より多くの国</span>
    <span class="">を見て、</span>
    <span>より多くの人々</span>
    <span class="">に会いたいと思います</span>
    <span class="">。</span>
    <span class="">私の仕事</span>
    <span class="">の</span>
    <span class="">ため、</span>
    <span class="">一部</span>
    <br><span class="">ハンブルクの</span>
    <span class="">コーヒー</span>
    <span class="">ショップ</span>
    <span class="">。</span>
    <span class="">私は</span>
    <span class="">多くの人々</span>
    <span class="">の話を</span>
    <span>したいので、</span>
    <span class="">コメント</span>
    <span class="">すること自由に感じ</span>
    <br><span>あなたが</span>
    <span>好き</span>
    <span class="">。</span>
    </span>



text input box
result box
hightlight
->main page(dictionary classic list page)
input
sententce list
->sententce page
sidemenu: color, audio,mydict (trigger:icon)
content: sententce(target-highlight)
hiden-slide(from bottem):dictionary page字典的形式（库，被阅读的量，浏览历史）

dictionary page:
淡化名词，强化动词和副词连接词
句例有copy menu


还必须有dictionary的库

词义API
API 1
http://dict.youdao.com/jsonapi?q=%E3%81%84%E3%82%8D%E3%82%93&keyfrom=deskdict.tab_switch&dogVersion=1.0&dogui=json&client=deskdict&id=2d63d924a39c62514&vendor=unknown&in=YoudaoDict_V6.3.67.7016_setup.1439368979&appVer=6.3.69.4001&appZengqiang=0&abTest=9&le=jap&dicts=%7B%22count%22%3A11%2C%22dicts%22%3A%5B%5B%22ec%22%2C%22ce%22%2C%22cj%22%2C%22jc%22%2C%22ck%22%2C%22kc%22%2C%22cf%22%2C%22fc%22%5D%2C%5B%22pic_dict%22%5D%2C%5B%22web_trans%22%2C%22special%22%2C%22ee%22%2C%22hh%22%5D%2C%5B%22collins%22%2C%22ec21%22%2C%22ce_new%22%5D%2C%5B%22phrs%22%2C%22syno%22%2C%22rel_word%22%5D%2C%5B%22blng_sents_part%22%2C%22media_sents_part%22%2C%22auth_sents_part%22%5D%2C%5B%22baike%22%5D%2C%5B%22fanyi%22%5D%2C%5B%22web_search%22%5D%2C%5B%22typos%22%5D%2C%5B%22collins_part%22%5D%5D%7D%0A&LTH=0
API 2






http://dict.youdao.com/w/jap/%E3%81%84%E3%82%8D%E3%82%93/#keyfrom=dict.top

url 转码
http://tool.oschina.net/encode?type=4

Audio API
http://dict.youdao.com/dictvoice?audio=%E7%A7%81%E3%81%AE%E5%90%8D%E5%89%8D%E3%81%AF&le=jap&client=deskdict




![](D:\GitHub\tbxy09.github.io\mdfiles\jplf\search.png)

    <div class="bar bar-subheader item-input-inset">
        <label class="item-input-wrapper">
            <i class="icon ion-ios7-search placeholder-icon"></i>
            <input id="searchKey" type="search" placeholder="Search" ng-model="searchKey" autocorrect="off" >
            <button class="button button-clear" ng-click="clearSearch()">X</button>
        </label>
        <button class="button button-clear" ng-click="search()">Search</button>
    </div>



    <ion-view title="Employees">    
        <div class="bar bar-subheader item-input-inset">
            <label class="item-input-wrapper">
                <i class="icon ion-ios7-search placeholder-icon"></i>
                <input id="searchKey" type="search" placeholder="Search" ng-model="searchKey" autocorrect="off" >
                <button class="button button-clear" ng-click="clearSearch()">X</button>
            </label>
            <button class="button button-clear" ng-click="search()">Search</button>
        </div>    
        <ion-content class="has-header has-subheader">
            <ion-list>
                <ion-item ng-repeat="employee in employees" type="item-text-wrap" class="item-avatar"
                          href="#/employees/{{employee.id}}">
                    <img src="pics/{{employee.pic}}"/>
                    {{employee.firstName}} {{employee.lastName}}
                    <p>{{employee.title}}</p>
                </ion-item>
            </ion-list>
        </ion-content>    
    </ion-view>

url:/word/
1.建立新的resourcelink
2.在control.js里头解析
3.在html里头打印


