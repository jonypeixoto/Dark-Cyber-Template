<?php
// In a land shrouded in mystery...

header('Content-type: application/json');
include("login.php");

session_start();
$userSessionID = $_SESSION['UserSession'];

if (session_id() === $_COOKIE['Session'] && isset($_SESSION['UserSession'])) {

    function query($sql, ...$params) {
        global $mysqli;
        $stmt = $mysqli->prepare($sql);
        if ($params) {
            $stmt->bind_param(str_repeat('s', count($params)), ...$params);
        }
        $stmt->execute();
        return $stmt->get_result();
    }

// ...there stood a Dark Cyber

    function fetchData($userSessionID, $cyberID, $order, $limit, $offset) {
        $records = array();

        $query = query("SELECT 
            Cyber_ID, 
            Cyber_Name,
            Cyber_Desc,
            Cyber_Lord, 
            Cyber_Image
            FROM CyberTable 
            WHERE Cyber_ID = ? AND Cyber_Active = 1 
            LIMIT 1;", $cyberID);

        while ($row = $query->fetch_assoc()) {
            $records[] = array(
                'cyberID' => intval($row['Cyber_ID']),
                'cyberName' => $row['Cyber_Name'],
                'cyberDesc' => $row['Cyber_Desc'],
                'cyberLordID' => intval($row['Cyber_Lord']),
                'cyberImage' => $row['Cyber_Image']
            );
        }

        echo json_encode($records);
    }

    switch ($_POST["command"]) {
        case "FetchCyberData":
            $cyberID = addslashes($_POST["cyberID"]);
            $limit = intval($_POST["Limit"]);
            $offset = intval($_POST["Offset"]);
            $order = 'Cyber_Created DESC';

            fetchData($userSessionID, $cyberID, $order, $limit, $offset);
            break;

        default:
            $response = array("error_message" => "Invalid command.");
            echo json_encode($response);
            break;
    }
} else {
    $response = array("error_message" => "Session expired, please log in again.");
    echo json_encode($response);
}
?>
