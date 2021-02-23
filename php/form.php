<?php
require "DataBase2.php";
$db = new DataBase();
if (isset($_POST['BaitulHilal']) && isset($_POST['TIjtimak']) && isset($_POST['WaktuIjtimak']) && isset($_POST['Longitud']) 
&& isset($_POST['Latitud']) && isset($_POST['TMasihi']) && isset($_POST['THijrah']) && isset($_POST['WMatahariTerbenam']) 
&& isset($_POST['WHilalTerbenam']) && isset($_POST['MasaTerbaik']) && isset($_POST['Altitud']) && isset($_POST['Elongasi']) 
&& isset($_POST['UmurHilal']) && isset($_POST['LagTime']) && isset($_POST['BezaAltitud']) && isset($_POST['AzimutMatahari'])) {
    if ($db->dbConnect()) {
        if ($db->form("hilal_form", $_POST['BaitulHilal'], $_POST['TIjtimak'], $_POST['WaktuIjtimak'], $_POST['Longitud'], 
        $_POST['Latitud'], $_POST['TMasihi'], $_POST['THijrah'], $_POST['WMatahariTerbenam'], 
        $_POST['WHilalTerbenam'], $_POST['MasaTerbaik'], $_POST['Altitud'], $_POST['Elongasi'], 
        $_POST['UmurHilal'], $_POST['LagTime'], $_POST['BezaAltitud'], $_POST['AzimutMatahari'])) {
            echo "Submit Form Successful";
        } else echo "Submit Form Failed";
    } else echo "Error: Database connection";
} else echo "All fields are required";
?>
