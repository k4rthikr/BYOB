#!/apollo/env/envImprovement/bin/perl

my $envs = { "c2c" => { "na" => "CSTelephonyClick2ContactCoralService/NA", 
                        "eu" => "CSTelephonyClick2ContactCoralService/EU"
                    } ,
             "abuse" => { "na" => "CSContactAbuseService" }
           };

print $ARGV[1] . "\n";
my $env = $ARV[1];
my $geo = $ARGV[2];
print "Environment: " . $envs->{ $env }->{ $geo } . "\n";
print "Environment: " . $envs->{c2c}->{na} . "\n";
print "Environment: " . $envs->{"c2c"}->{"na"} . "\n";
 
