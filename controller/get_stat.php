<?php // content="text/plain; charset=utf-8"
require_once ('../jpgraph-4.4.1/src/jpgraph.php');
require_once ('../jpgraph-4.4.1/src/jpgraph_bar.php');

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("SELECT id, name, albums_count FROM statistics");
$stmt->execute();

$res = $stmt->fetchAll();

$pdo = null;

$datay=array_column($res, 'albums_count');

// Create the graph. These two calls are always required
$graph = new Graph(1100,300,'auto');
$graph->SetScale("textlin");

//$theme_class="DefaultTheme";
//$graph->SetTheme(new $theme_class());

// set major and minor tick positions manually
$graph->yaxis->SetTickPositions(array(0,1,2,3,4,5));
$graph->SetBox(false);

//$graph->ygrid->SetColor('gray');
$graph->ygrid->SetFill(false);
$graph->xaxis->SetTickLabels(array_column($res, 'name'));
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);

// Create the bar plots
$b1plot = new BarPlot($datay);

// ...and add it to the graPH
$graph->Add($b1plot);


$b1plot->SetColor("black");
$b1plot->SetFillGradient("black","gray", GRAD_DIAGONAL);
$b1plot->SetWidth(45);

// Display the graph
$graph->Stroke();

