<#
    Programador....: (c) 2024 Lourenço Moreira
    Data...........: 26/11/24
    Observações....: Menu
#>

function Show-RPPSMenu {
    [CmdletBinding()]
    param (
        [string]$Titulo,
        [string[]]$OpcoesMenu
    )

    Separador = "*" * 47

    Clear-Host
    Write-Verbose -Message "A inicializar o menu..."
    Write-Host $Separador
    Write-Host "$Titulo"
    Write-Host $Separador
    foreach($opcao in $OpcoesMenu) {
        Write-Host "$opcao"
        }
        Write-Verbose -Message "O menu foi apresentado..."
    }

function Start-RPPSMenu {
    [CmdletBinding()]
    param()

    do {
    Show-RPPSMenu -Titulo "Menu Principal" -OpcoesMenu @(
        "1 - Visualizar a data",
        "2 - Visualizar o conteudo do diretorio atual",
        "S - Sair" 
    )

    $opcao = Read-Host "Selecione uma opcao de menu"

        switch($opcao) {
            '1' {
            write-host "Opcao 1"
        }
            '2' {
            write-host "Opcao 2"
        }
            'S' {
            write-Host "Adeus!"
        }
            default {
                write-Host "Opcao Invalida"
                Start-Sleep -seconds 2
            }
        }
    } while($opcao -ne "S")
}

Start-RPPSMenu