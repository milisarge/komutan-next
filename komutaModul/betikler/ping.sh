#-h:Host:google.com

sayac=5

function kullanim
{
    echo "kullanım: ping.sh [[[-h host ] [-s sayac]] | [-y ]]"
}



function pingAt
{
    ping $1 -c $sayac
}

while [ "$1" != "" ]; do
    case $1 in
        -h )            shift
                        pingAt "$1"
                        ;;
        -s )    	sayac=$1
                        ;;
        -y )         	kullanim
                        exit
                        ;;
        * )             kullanim
                        exit 1
    esac
    shift
done

