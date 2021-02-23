<?php
require "DataBaseConfig.php";

class DataBase
{
    public $connect;
    public $data;
    private $sql;
    protected $servername;
    protected $username;
    protected $password;
    protected $databasename;

    public function __construct()
    {
        $this->connect = null;
        $this->data = null;
        $this->sql = null;
        $dbc = new DataBaseConfig();
        $this->servername = $dbc->servername;
        $this->username = $dbc->username;
        $this->password = $dbc->password;
        $this->databasename = $dbc->databasename;
    }

    function dbConnect()
    {
        $this->connect = mysqli_connect($this->servername, $this->username, $this->password, $this->databasename);
        return $this->connect;
    }

    function prepareData($data)
    {
        return mysqli_real_escape_string($this->connect, stripslashes(htmlspecialchars($data)));
    }


    function form($table, $BaitulHilal, $TIjtimak, $WaktuIjtimak, $Longitud, $Latitud, $TMasihi, $THijrah, $WMatahariTerbenam, 
    $WHilalTerbenam, $MasaTerbaik, $Altitud, $Elongasi, $UmurHilal, $LagTime, $BezaAltitud, $AzimutMatahari)
    {
        $BaitulHilal = $this->prepareData($BaitulHilal);
        $TIjtimak = $this->prepareData($TIjtimak);
        $WaktuIjtimak = $this->prepareData($WaktuIjtimak);
        $Longitud = $this->prepareData($Longitud);
        $Latitud = $this->prepareData($Latitud);
        $TMasihi = $this->prepareData($TMasihi);
        $THijrah = $this->prepareData($THijrah);
        $WMatahariTerbenam = $this->prepareData($WMatahariTerbenam);
        $WHilalTerbenam = $this->prepareData($WHilalTerbenam);
        $MasaTerbaik = $this->prepareData($MasaTerbaik);
        $Altitud = $this->prepareData($Altitud);
        $Elongasi = $this->prepareData($Elongasi);
        $UmurHilal = $this->prepareData($UmurHilal);
        $LagTime = $this->prepareData($LagTime);
        $BezaAltitud = $this->prepareData($BezaAltitud);
        $AzimutMatahari = $this->prepareData($AzimutMatahari);
    
        $this->sql =
            "INSERT INTO " . $table . " (BaitulHilal, TIjtimak, WaktuIjtimak, Longitud, Latitud, TMasihi, THijrah, 
            WMatahariTerbenam, WHilalTerbenam, MasaTerbaik, Altitud, Elongasi, UmurHilal, LagTime, BezaAltitud, AzimutMatahari) 
            VALUES ('" . $BaitulHilal . "','" . $TIjtimak . "','" . $WaktuIjtimak . "','" . $Longitud . "','" . $Latitud . "',
            '" . $TMasihi . "','" . $THijrah . "','" . $WMatahariTerbenam . "','" . $WHilalTerbenam . "','" . $MasaTerbaik . "',
            '" . $Altitud . "','" . $Elongasi . "','" . $UmurHilal . "','" . $LagTime . "','" . $BezaAltitud . "','" . $AzimutMatahari . "')";
        if (mysqli_query($this->connect, $this->sql)) {
            return true;
        } else return false;
    }

}

?>
