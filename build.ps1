param (
	[parameter(Position=0,
	   Mandatory=$false)]
	   [ValidateSet("Debug","Deploy")]
	   [string]$Action
)

if ($Action -eq ""){
	echo "No action specified, begining debug session"
	$Action = "Debug" 
}

if($Action -eq "Debug") {
	hugo server -v -w -D
} else {
	echo "deploying"
	remove-item ../drrscuba.github.io/* -Recurse
	hugo -v -d ../drrscuba.github.io/
	cp file.cname ../drrscuba.github.io/CNAME
}