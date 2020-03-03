$(document).ready(function() {
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
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear','myclear']],
            ['fontsize', ['fontsize']],
            ['fontname', ['fontname']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
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
                sendFile($summernote, files[0]);
            },

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
    var $summernote=$('#summernote').summernote(summernote_config);

    $('#subm').click(function () {
        // alert('d')
        // console.log($('#summernote').summernote('code'))
        $('#fu').val($('#summernote').summernote('code'))
    })

    //ajax上传图片
    function sendFile($summernote, file) {
        // alert('{:url("upload/docu")}')
        var formData = new FormData();
        formData.append("file", file);
        $.ajax({
            type: 'POST',
            url: '/admin/upload/edit_upload',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            dataType: 'json',
            success: function (data) {

                var imgsrc=data.data.src
                $summernote.summernote('insertImage', imgsrc, function ($image) {
                    $image.attr('src', imgsrc);
                    $image.attr('style',"width:100%");
                });
            }
        });
    }

});