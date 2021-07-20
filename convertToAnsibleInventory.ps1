#Objet permettant de stocker un groupe Ansible de type Application
#Il decrit les éléments necessaires à la création d'un groupe Ansible dans un inventaire pour identifier une application dans Dynatrace
#Ce groupe contient 3 champs texte et une liste : 
#$application_code = le code application pour cette application
#$appname = le nom de l'application
#$appli = le nom de l'appli qui est souvent le meme que celui de l'application
#$hosts = la liste des hosts appartenant à ce groupe
#Exemple
#$application_code = 'hs'
#$appname = 'hermes'
#$appli = 'hermes'
#$hosts = ('hostname001','hostname002','hostname003') 
class ApplicationGroup {
 
    hidden [String]$application_code
    hidden [String]$appname
    hidden [String]$appli
    hidden [System.Collections.ArrayList]$hosts
 
    ApplicationGroup () {}
    ApplicationGroup ([String]$application_code,[String]$appname,[String]$appli,[String[]]$hosts)
    {
        $this.application_code = $application_code
        $this.appname = $appname
        $this.appli = $appli
        $this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.application_code+" "+$this.appname+" "+$this.appli+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	
	[String] getApplicationCode ()
    {
		return $this.application_code;
    }

	[String] getApplicationName ()
    {
		return $this.appname;
    }
	
	[String] getAppli ()
    {
		return $this.appli;
    }
	
	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

#Objet permettant de stocker un groupe Ansible de type Environement
#Il decrit les éléments necessaires à la création d'un groupe Ansible dans un inventaire pour identifier un environement dans Dynatrace
#Ce groupe contient 2 champs texte et une liste : 
#$environment_name = le nom de l'environement
#$environment_code = le code de l'environement, sur une lettre
#$hosts = la liste des hosts appartenant à ce groupe
#Exemple
#$environment_code = 'e'
#$environment_name = 'etude'
#$hosts = ('hostname001','hostname002','hostname003') 
class EnvironmentGroup {
 
    hidden [String]$environment_code
	hidden [String]$environment_name
    hidden [System.Collections.ArrayList]$hosts
 
    EnvironmentGroup () {}
    EnvironmentGroup ([String]$environment_name, [String]$environment_code, [String[]]$hosts)
    {
		$this.environment_name = $environment_name
        $this.environment_code = $environment_code
		$this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.environment_code+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	[String] getEnvironmentName ()
    {
		return $this.environment_name;
    }
	
	[String] getEnvironmentCode ()
    {
		return $this.environment_code;
    }

	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

#Objet permettant de stocker un groupe Ansible de type Function
#Il decrit les éléments necessaires à la création d'un groupe Ansible dans un inventaire pour identifier le tag function d'un host dans Dynatrace
#Ce groupe contient 1 champ texte et une liste : 
#$function_name = la valeur du tag function
#$hosts = la liste des hosts appartenant à ce groupe
#Exemple
#$function_name = 'bdd'
#$hosts = ('hostname001','hostname002','hostname003')
class FunctionGroup {
 
    hidden [String]$function_name
    hidden [System.Collections.ArrayList]$hosts
 
    FunctionGroup () {}
    FunctionGroup ([String]$function_name, [String[]]$hosts)
    {
		$this.function_name = $function_name
		$this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.function_name+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	[String] getFunctionName ()
    {
		return $this.function_name;
    }

	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

#Objet permettant de stocker un groupe Ansible de type Technology
#Il decrit les éléments necessaires à la création d'un groupe Ansible dans un inventaire pour identifier le tag technology d'un host dans Dynatrace
#Ce groupe contient 1 champ texte et une liste : 
#$technology_name = la valeur du tag technology
#$hosts = la liste des hosts appartenant à ce groupe
#Exemple
#$technology_name = 'apache'
#$hosts = ('hostname001','hostname002','hostname003')
class TechnologyGroup {
 
    hidden [String]$technology_name
    hidden [System.Collections.ArrayList]$hosts
 
    TechnologyGroup () {}
    TechnologyGroup ([String]$technology_name, [String[]]$hosts)
    {
		$this.technology_name = $technology_name
		$this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.technology_name+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	[String] getTechnologyName ()
    {
		return $this.technology_name;
    }

	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

class OSFamilyGroup {
 
    hidden [String]$os_name
    hidden [System.Collections.ArrayList]$hosts
 
    OSFamilyGroup () {}
    OSFamilyGroup ([String]$os_name, [String[]]$hosts)
    {
		$this.os_name = $os_name
		$this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.os_name+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	[String] getOSName ()
    {
		return $this.os_name;
    }

	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

#Commentaires
class DynatraceGroup {
 
    hidden [String]$dynatrace_environment_url
	hidden [String]$dynatrace_paas_token
	hidden [String]$dynatrace_oneagent_tenant_token
	hidden [String]$dynatrace_environment_name
    hidden [System.Collections.ArrayList]$hosts
 
     DynatraceGroup () {}
     DynatraceGroup ([String]$dynatrace_environment_name,[String]$dynatrace_environment_url, $dynatrace_paas_token, $dynatrace_oneagent_tenant_token, [String[]]$hosts)
    {
		$this.dynatrace_environment_name = $dynatrace_environment_name
		$this.dynatrace_environment_url = $dynatrace_environment_url
		$this.dynatrace_paas_token = $dynatrace_paas_token
		$this.dynatrace_oneagent_tenant_token = $dynatrace_oneagent_tenant_token
		$this.hosts = New-Object -TypeName "System.Collections.ArrayList";
        $this.hosts.add($hosts)
    }
    
    [String] print ()
    {
        $line += $this.dynatrace_environment_name+" "+$this.dynatrace_environment_url+" "+$this.dynatrace_paas_token+" "+$this.dynatrace_oneagent_tenant_token+" "+$this.hosts
        return $line
    }
	
	[void] addHost ($namehost)
    {
		if($this.hosts.contains($namehost)){
			return
		}
        $this.hosts.add($namehost)
        return
    }
	
	[String] getEnvironmentUrl ()
    {
		return $this.dynatrace_environment_url;
    }
	
	[String] getPaasToken ()
    {
		return $this.dynatrace_paas_token;
    }
	
	[String] getTenantToken ()
    {
		return $this.dynatrace_oneagent_tenant_token;
    }
	
	[String] getEnvironmentName ()
    {
		return $this.dynatrace_environment_name;
    }
	
	[String[]] getHosts ()
    {
		return $this.hosts;
    }
}

#Commentaires
function WriteAnsibleInventory($path) {
	Add-Content -Path $path -Value "all:"
}

#Commentaires
function WriteAnsibleInventoryHosts($hosts, $path){
	Add-Content -Path $path -Value "  hosts:"
	
	ForEach($h in $hosts){
			Add-Content -Path $path -Value "    $($h):"
	}
	
	Add-Content -Path $path -Value "  children:"
}

#Commentaires
function WriteAnsibleInventoryApplicationGroup([hashtable]$application_group_list, [String]$path){

	ForEach($application_group in $application_group_list.values){
	
		$application_name=$application_group.getApplicationName()
		$application_code=$application_group.getApplicationCode()
		$application_appli=$application_group.getAppli()
	
		Add-Content -Path $path -Value "    $($application_name):"
		Add-Content -Path $path -Value "      hosts:"
		ForEach($h in $($application_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        application_code: $($application_code)"
		Add-Content -Path $path -Value "        appname: $($application_name)"
		Add-Content -Path $path -Value "        appli: $($application_appli)"
	}
}

#Commentaires
function WriteAnsibleInventoryEnvironmentGroup([hashtable]$environment_group_list, [String]$path){

	ForEach($env_group in $environment_group_list.values){
	
		$env_name=$env_group.getEnvironmentName()
		$env_code=$env_group.getEnvironmentCode()
	
		Add-Content -Path $path -Value "    $($env_name):"
		Add-Content -Path $path -Value "      hosts:"

		ForEach($h in $($env_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        environment_code: $($env_code)"
	}
}

#Commentaires
function WriteAnsibleInventoryFunctionGroup([hashtable]$function_group_list, [String]$path){

	ForEach($func_group in $function_group_list.values){
	
		$func_name=$func_group.getFunctionName()
	
		Add-Content -Path $path -Value "    $($func_name):"
		Add-Content -Path $path -Value "      hosts:"

		ForEach($h in $($func_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        function: $($func_name)"
	}
}

#Commentaires
function WriteAnsibleInventoryTechnologyGroup([hashtable]$technology_group_list, [String]$path){

	ForEach($techno_group in $technology_group_list.values){
	
		$techno_name=$techno_group.getTechnologyName()
	
		Add-Content -Path $path -Value "    $($techno_name):"
		Add-Content -Path $path -Value "      hosts:"

		ForEach($h in $($techno_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        technology: $($techno_name)"
	}
}

#Commentaires
function WriteAnsibleInventoryDynatraceGroup([hashtable]$dynatrace_group_list, [String]$path){

	ForEach($dynatrace_group in $dynatrace_group_list.values){
	
		$dynatrace_environment_name=$dynatrace_group.getEnvironmentName();
		$dynatrace_environment_url=$dynatrace_group.getEnvironmentUrl();
		$dynatrace_paas_token=$dynatrace_group.getPaasToken();
		$dynatrace_tenant_token=$dynatrace_group.getTenantToken();
	
		Add-Content -Path $path -Value "    dynatrace_$($dynatrace_environment_name):"
		Add-Content -Path $path -Value "      hosts:"

		ForEach($h in $($dynatrace_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        dynatrace_environment_url: $($dynatrace_environment_url)"
		Add-Content -Path $path -Value "        dynatrace_paas_token: $($dynatrace_paas_token)"
		Add-Content -Path $path -Value "        dynatrace_oneagent_version: latest"
		Add-Content -Path $path -Value "        dynatrace_oneagent_package_download_validate_certs: yes"
		Add-Content -Path $path -Value '        dynatrace_oneagent_install_args: {INSTALL_PATH=/softwares/dynatrace/oneagent --set-app-log-content-access=true --set-infra-only=true}'
		Add-Content -Path $path -Value "        dynatrace_oneagent_package_state: present"
		Add-Content -Path $path -Value '        dynatrace_oneagent_host_tags: {}'
		Add-Content -Path $path -Value '        dynatrace_oneagent_host_metadata: "Appname={{ appname }} \nFunction={{ function }} \nTechnology={{ technology }}\n"'
		Add-Content -Path $path -Value '        dynatrace_oneagent_state: started'
		Add-Content -Path $path -Value "        dynatrace_paas_token: $($dynatrace_tenant_token)"
	}
}

#Commentaires
function WriteAnsibleInventoryOSFamilyGroup([hashtable]$osfamily_group_list, [String]$path){

	ForEach($osfamily_group in $osfamily_group_list.values){
	
		$osfamily_name=$osfamily_group.getOSName()
	
		Add-Content -Path $path -Value "    $($osfamily_name):"
		Add-Content -Path $path -Value "      hosts:"

		ForEach($h in $($osfamily_group.getHosts())){
			Add-Content -Path $path -Value "        $($h):"
		}
		Add-Content -Path $path -Value "      vars:"
		Add-Content -Path $path -Value "        osfamily: $($osfamily_name)"
	}
}

$url_git = "http://hostname/pub/packages/git/git.exe"
$path_git = 'C:/Windows/Temp/git.exe'

if(!(Test-Path 'C:\Program Files\Git')){
	if (!(Test-Path $path_git -PathType leaf)){
	Write-Host "Telechargement du paquet Git ..."
    Invoke-WebRequest -Uri $url_git -OutFile $path_git
	}
	
	Write-Host "Installation du client Git ..."
	Start-Process $path_git -ArgumentList "/SP- /VERYSILENT /SUPPRESSMSGBOXES /FORCECLOSEAPPLICATIONS" -Wait
}

$current_path = Get-Location
$current_path_splitted = $current_path.tostring().split("\")
$current_directory = $current_path_splitted[$current_path_splitted.length-1]

if((!($current_directory -eq 'dynatrace-oneagent-ansible')) -and (Test-Path './dynatrace-oneagent-ansible')){
	Write-Error "Le script convertToAnsibleInventory.ps1 doit etre execute a partir d'un clone du repository Dynatrace-OneAgent-Ansible. Pensez a bien modifier le fichier dynatrace_referential.csv present dans le dossier dynatrace-oneagent-ansible, c'est ce fichier qui sera utilise par le script"
	return;
}


if(!($current_directory -eq 'dynatrace-oneagent-ansible')){
	Write-Warning "Le script convertToAnsibleInventory.ps1 doit etre execute a partir d'un clone du repository Dynatrace-OneAgent-Ansible."
	Write-Host "Clonage du repository ..."
	git clone 'https://hostname.client.com/do-amont/sti/supervision/dynatrace-oneagent-ansible'
	
	Write-Error "Veuillez reexecuter le script convertToAnsibleInventory.ps1 a partir du dossier dynatrace-oneagent-ansible. Pensez a bien modifier le fichier dynatrace_referential.csv present dans le dossier dynatrace-oneagent-ansible, c'est ce fichier qui sera utilise par le script"
	return;
}

Write-Host "Importation du referentiel ..."
$csv = Import-Csv ./dynatrace_referential.csv -delimiter ';'

$path = './inventaire_dynatrace.yml'
$log = New-Item $path -ItemType file -Force
$hosts_names = @()
WriteAnsibleInventory($path)

$application_group_list = @{}
$environment_group_list = @{}
$function_group_list = @{}
$technology_group_list = @{}
$dynatrace_group_list = @{}
$osfamily_group_list = @{}

Write-Host "Traitement du fichier referentiel ..."

$csv | ForEach-Object {

	if(($hosts_names.contains($_.host))){
		return
	}

	$hostname = $_.host
	$infra_only = $_.infra_only
	$code_appli = $_.code_appli
	$appliname = $_.appliname
	$function = $_.function
	$technology = $_.technology
	$error = $false
	
	#si code_appli n'est pas 2 caractères minuscules => exception + continue
	if(!($hostname -cmatch "^[a-z0-9.-]*$") -or ($hostname -eq '') ){
		write-warning "Le hostname $hostname est vide ou n'est pas compose uniquement de lettres minuscules, chiffres, tirets ou points"
		if($hostname -match " "){
			write-warning "Le hostname $hostname contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	#si infra_only n'est pas oui ou non => exception + continue
	if(!(($infra_only -eq "oui") -or ($infra_only -eq "non"))){
		write-warning "Le champ infra_only $infra_only est obligatoire et doit avoir une des valeurs suivantes : oui, non"
		if($infra_only -match " "){
			write-warning "Le champ infra_only $infra_only contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	#si infra_only est non et function ou technology est vide
	if(($infra_only -eq "non") -and (($function -eq '') -or ($technology -eq ''))){
		write-warning "Le champ infra_only est egal a $infra_only. Les champs function et technlogy doivent etre renseignes. Or function='$function' et technology='$technology'"
		$error = $true
	}
	
	#si code_appli n'est pas 2 caractères minuscules => exception + continue
	if(!(($code_appli -cmatch "^[a-z0-9]*$") -and ($code_appli.Length -eq 2))){
		write-warning "Le code appli $code_appli est vide ou  n'est pas compose de 2 lettres minuscules ou d'une lettre minuscule suivie d'un chiffre"
		if($code_appli -match " "){
			write-warning "Le code appli $code_appli contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	#si appliname n'est pas a-z , _ => exception + continue
	if(!($appliname -cmatch "^[a-z0-9-]*$") -or ($appliname -eq '') ){
		write-warning "Le nom d'application $appliname est vide ou n'est pas uniquement compose de lettres minuscules separe par des tirets"
		if($appliname -match " "){
			write-warning "Le nom d'application $appliname contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	#si function n'est pas a-z , _ => exception + continue
	if(!($function -cmatch "^[a-z0-9-]*$")){
		write-warning "Le nom de fonction $function est vide ou n'est pas uniquement compose de lettres minuscules separe par des tirets"
		if($function -match " "){
			write-warning "La fonction $function contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	#si technlogy n'est pas a-z , _ => exception + continue
	if(!($technology -cmatch "^[a-z0-9-]*$")){
		write-warning "Le nom de technologie $technology est vide ou n'est pas uniquement compose de lettres minuscules separe par des tirets"
		if($technlogy -match " "){
			write-warning "La technlogy $technlogy contient un ou plusieurs espaces. Supprimez ces caracteres pour que cette ligne soit prise en compte"
		}
		$error = $true
	}
	
	$env_code = $_.host[4]
	$env_code = "$env_code".ToLower()
	$env_name = ""
	switch ($env_code)
	{
		'b' { $env_name = "bench" }
		'e' { $env_name = "etude" }
		'f' { $env_name = "formation" }
		'p' { $env_name = "production" }
		'q' { $env_name = "qualification" }
		'r' { $env_name = "recette" }
		't' { $env_name = "postprod" }
		'u' { $env_name = "recette_utilisateur" }
		'i' { $env_name = "integration" }
		'd' { $env_name = "developpement" }
		Default {
			write-warning "Environement $env_code non reconnu pour le host $hostname"
			$error = $true
		}
	}
	
	$osfamily_code = $_.host[0]
	$osfamily_code = "$osfamily_code".ToLower()
	$osfamily_name = ""
	switch ($osfamily_code)
	{
		'l' { $osfamily_name = "linux" }
		'w' { $osfamily_name = "windows" }
		'u' { $osfamily_name = "unix" }
		'v' { $osfamily_name = "hyperv" }
		Default {
			write-warning "Os family code $osfamily_code non reconnu pour le host $hostname"
			$error = $true
		}
	}
	
	if($error){
		write-warning "La ligne contenant le hostname $hostname ne sera pas prise en compte"
		return;
	}
	
	
	$hosts_names += $_.host
	
	if($application_group_list.ContainsKey($appliname)){
		$application_group_list.Item($appliname).addHost($_.host)
	}
	else{
		$new_app_group = New-Object -Typename ApplicationGroup -ArgumentList $code_appli,$appliname,$appliname,$_.host
		$application_group_list[$appliname] = $new_app_group
	}
	
	if($environment_group_list.ContainsKey($env_code)){
		$environment_group_list.Item($env_code).addHost($_.host)
	}
	else{
		$new_env_group = New-Object -Typename EnvironmentGroup -ArgumentList $env_name,$env_code,$_.host
		$environment_group_list[$env_code] = $new_env_group
	}
	
	if($osfamily_group_list.ContainsKey($osfamily_name)){
			$osfamily_group_list.Item($osfamily_name).addHost($_.host)
		}
		else{
			$new_osfamily_group = New-Object -Typename OSFamilyGroup -ArgumentList $osfamily_name,$_.host
			$osfamily_group_list[$osfamily_name] = $new_osfamily_group
		}
	
	if(!(($function -eq '') -or ($technology -eq ''))){
		if($function_group_list.ContainsKey($function)){
			$function_group_list.Item($function).addHost($_.host)
		}
		else{
			$new_func_group = New-Object -Typename FunctionGroup -ArgumentList $function,$_.host
			$function_group_list[$function] = $new_func_group
		}
		
		if($technology_group_list.ContainsKey($technology)){
			$technology_group_list.Item($technology).addHost($_.host)
		}
		else{
			$new_techno_group = New-Object -Typename TechnologyGroup -ArgumentList $technology,$_.host
			$technology_group_list[$technology] = $new_techno_group
		}
	}
	
	if($env_code -eq 'p'){
		$dynatrace_environment = 'production'
		$dynatrace_environment_url = 'hostname.client.com/e/tenantid'
		$dynatrace_paas_token = 'token1'
		$dynatrace_tenant_token = 'token2'
	}
	else{
		$dynatrace_environment = 'preprod'
		$dynatrace_environment_url = 'hostname.client.com/e/tenantid'
		$dynatrace_paas_token = 'token3'
		$dynatrace_tenant_token = 'token4'
	}
	
	if($dynatrace_group_list.ContainsKey($dynatrace_environment)){
		$dynatrace_group_list.Item($dynatrace_environment).addHost($_.host)
	}
	else{
		$new_dynatrace_group = New-Object -Typename DynatraceGroup -ArgumentList $dynatrace_environment,$dynatrace_environment_url,$dynatrace_paas_token,$dynatrace_tenant_token,$_.host
		$dynatrace_group_list[$dynatrace_environment] = $new_dynatrace_group
	}
}

Write-Host "Generation de l'inventaire Ansible ..."

WriteAnsibleInventoryHosts $hosts_names $path
WriteAnsibleInventoryApplicationGroup $application_group_list $path
WriteAnsibleInventoryEnvironmentGroup $environment_group_list $path
WriteAnsibleInventoryOSFamilyGroup $osfamily_group_list $path
WriteAnsibleInventoryFunctionGroup $function_group_list $path
WriteAnsibleInventoryTechnologyGroup $technology_group_list $path
WriteAnsibleInventoryDynatraceGroup $dynatrace_group_list $path

Write-Host "Mise a jour du repository Git ..."

git add -A
git commit -m 'New inventory uploaded'
git pull 'https://dynatrace-oneagent-ansible.git'
git push 'https://dynatrace-oneagent-ansible.git' --all

Write-Host "Le referentiel a bien ete mis a jour"
pause