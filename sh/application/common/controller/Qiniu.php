<?php

namespace app\common\controller;

use Qiniu\Auth;
vendor('newqiniu.php-sdk.autoload');
use Qiniu\Storage\UploadManager;
use Qiniu\Storage\BucketManager;
use think\Config;

class Qiniu
{
    public static function upload($path, $fileName)
    {
        $ak = Config::get('QINIU_AK');
        $sk = Config::get('QINIU_SK');
        $bucket = Config::get('QINIU_BUCKET');
        $auth = new Auth($ak, $sk);
        $token = $auth->uploadToken($bucket);
        $uploadMag = new UploadManager();

        list($response, $error) = $uploadMag->putFile($token, $fileName, $path);

//    return $response;
        return !$error;
    }

    public static function token()
    {
        $ak = Config::get('QINIU_AK');
        $sk = Config::get('QINIU_SK');
        $bucket = Config::get('QINIU_BUCKET');

        $auth = new Auth($ak, $sk);
        return $auth->uploadToken($bucket);
    }

    public static function remove($fileName)
    {
        $ak = Config::get('QINIU_AK');
        $sk = Config::get('QINIU_SK');
        $bucket = Config::get('QINIU_BUCKET');

        $auth = new Auth($ak, $sk);
        $bucketMag = new BucketManager($auth);

        $error = $bucketMag->delete($bucket, $fileName);

        return !$error;
    }
}