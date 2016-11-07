<?php
/**
 * Created by IntelliJ IDEA.
 * User: MasterHo
 * Date: 2016.11.03
 * Time: 19:44
 */
namespace Admin\Controller;
use Think\Controller;
class IframeController extends Controller {
    public function welcome(){
        $Model = M();
        $usrID = I('session.usrID/d');

        $sql = "SELECT LastLoginTime,LastLoginIP FROM AdminUserLoginLog WHERE AdminID={$usrID} ORDER BY LastLoginTime DESC LIMIT 1,1 ;";
        $data = $Model->query($sql);
        $this->assign('loginTime',$data[0]['lastlogintime']);
        $this->assign('loginIpAddr',$data[0]['lastloginip']);
        $this->display();
    }

    public function ClientList(){
        $model = M('customer');
        $data = $model->field('C_ID,C_Name,Gender,C_Address,Phone')->select();
        $this->assign('clientList',$data);
        $this->display('client_list');
    }

    public function ClientInfo(){
        if (IS_GET){
            $model = M('customer');

            $id = I('get.ID/d');
            $where = 'C_ID='.$id;
            $data = $model->where($where)->field('C_ID,C_Name,Gender,C_Address,Phone')->select();
            $this->assign('data',$data[0]);
            $this->display('client_info');
        } else {
            $this->error('非法操作！');
        }
    }
}