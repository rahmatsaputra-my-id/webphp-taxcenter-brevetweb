<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class m_global extends CI_Model {

	function __construct() {
        parent::__construct();
    }

	public function create($table,$data) 
	{
		return $this->db->insert($table,$data);	
	}
	
	public function read($table,$fieldpk) 
	{
		$this->db->order_by($fieldpk,'ASC');
		$query = $getData = $this->db->get($table);
		if ($getData->num_rows()>0)
		{return $query;}
		else 
		{return null;}
	}
	
	public function read_update($table,$fieldpk,$pk) 
	{
		$this->db->order_by($fieldpk,'ASC');
		$this->db->where($fieldpk,$pk);
		$query = $getData = $this->db->get($table);
		
		if ($getData->num_rows()>0)
		{return $query;}
		else 
		{return null;}
	}
	
	public function update($table,$fieldpk,$pk,$data)
	{
		$this->db->where($fieldpk,$pk);
		$this->db->update($table,$data);
	}
	
	public function delete($table,$fieldpk,$pk){
		$this->db->where($fieldpk,$pk);
		return $this->db->delete($table);
	}

	function getkodeunik($table,$fieldpk) { 
        $q = $this->db->query("SELECT $fieldpk AS idmax FROM ".$table);
        $kd = ""; //kode awal
        if($q->num_rows()>0){ //jika data ada
            foreach($q->result() as $k){
                $tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
                $kd = sprintf($tmp); //kode ambil 4 karakter terakhir
            }
        }else{ //jika data kosong diset ke kode awal
            $kd = "1";
        }
        return $kd;
   }

	function getkodeunikpegawai($table,$fieldpk) { 
        $q = $this->db->query("SELECT $fieldpk AS idmax FROM ".$table);
        $kd = ""; //kode awal
        if($q->num_rows()>0){ //jika data ada
            foreach($q->result() as $k){
                $tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
                $kd = substr($tmp,6,4); //kode ambil 4 karakter terakhir
            }
        }else{ //jika data kosong diset ke kode awal
            $kd = "0001";
        }
        $tanggal=getdate();
        if ($table=='data_guru'){
        return $tanggal['year'].$this->session->userdata('id_sekolah').'1'.$kd;
    	}elseif($table=='data_staff'){
    		return $tanggal['year'].$this->session->userdata('id_sekolah').'2'.$kd;
    	}
   }

	function getkodeuniksiswa($table,$fieldpk) { 
        $q = $this->db->query("SELECT $fieldpk AS idmax FROM ".$table);
        $kd = ""; //kode awal
        if($q->num_rows()>0){ //jika data ada
            foreach($q->result() as $k){
                $tmp = ((int)$k->idmax)+1; //string kode diset ke integer dan ditambahkan 1 dari kode terakhir
                $kd = substr($tmp,6,4); //kode ambil 4 karakter terakhir
            }
        }else{ //jika data kosong diset ke kode awal
            $kd = "000001";
        }
        $tanggal=getdate();
        return $tanggal['year'].$this->session->userdata('id_sekolah').$kd;
    	
   }
   
    public  function getByID($pk,$id,$tableheader)
        {
                $this->db->where($pk,$id);
                return $this->db->get($tableheader);
        } 
}
?>