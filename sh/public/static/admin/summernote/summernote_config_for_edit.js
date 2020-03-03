var MyphotoButton = function (context) {
    var ui = $.summernote.ui;

    // create button
    var button = ui.button({
        contents: '<i class="fa fa-eraser"/>',  //按钮样式
        tooltip: '完全清除格式',
        click: function () {
            //removeFormat
            var highlight = window.getSelection(),
                spn = document.createElement('p'),
                range = highlight.getRangeAt(0)

            spn.innerHTML = highlight;
            // spn.className = 'snote';
            // spn.style.color = 'blue';

            range.deleteContents();
            range.insertNode(spn);
        },
        callback:function(){
            // initfunction(params); //这里的回调函数会在加载页面的时候直接执行
        }
    });

    return button.render();    //按钮渲染
}
var summernote_config={
        placeholder: '编辑内容',
        lang:'zh-CN',
        tabsize: 2,
        height: 500,
        width: 960,
        fontNames: ['微软雅黑','宋体', '楷体', '黑体', '隶书','Arial', 'Arial Black', 'Comic Sans MS', 'Courier New',
            'Helvetica Neue', 'Helvetica', 'Impact', 'Lucida Grande',
            'Tahoma', 'Times New Roman', 'Verdana'],
        fontSizes: [ '12', '14', '16', '18', '20', '24', '36'],
        codemirror: { // codemirror options
            theme: 'monokai'
        },
        lineHeights:['0.5','1.0', '1.2', '1.4', '1.5', '1.6', '1.8', '2.0', '9.0','16px','24px'],
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear','myclear']],
            ['fontsize', ['fontsize']],
            // ['fontname', ['fontname']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help','undo','redo']]
        ],
        buttons: {
            myclear: MyphotoButton      //自已定义的按钮函数
        },
        //调用图片上传
        callbacks: {
            onImageUpload: function (files) {
                sendFile($(this), files[0]);
            },
            //清除字体
            onPaste: function (ne) {
                var bufferText = ((ne.originalEvent || ne).clipboardData || window.clipboardData).getData('Text/plain');
                console.log(bufferText)
                //    ne.preventDefault();
                ne.preventDefault ? ne.preventDefault() : (ne.returnValue = false);
                // Firefox fix
                setTimeout(function () {
                    document.execCommand("insertText", false, bufferText);
                }, 10);
            }
        }
    }
    var $summernote=$('.summernote').summernote(summernote_config);

    //ajax上传图片
    function sendFile($summernote, file) {
        // alert('{:url("upload/docu")}')
        var formData = new FormData();
        formData.append("file", file);
        $.ajax({
            url: '/admin/upload/edit_upload',//路径是你控制器中上传图片的方法，下面controller里面我会写到
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            type: 'POST',
            success: function (data) {
                // console.log(data)
                console.log(data.data.src)
                var imgsrc=data.data.src
                $summernote.summernote('insertImage', imgsrc, function ($image) {
                    $image.attr('src', imgsrc);
                    $image.attr('style',"width:100%");
                });
            }
        });
    }