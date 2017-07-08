SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "rivers" (gid serial,
"scalerank" numeric(10,0),
"featurecla" varchar(32),
"name" varchar(254),
"name_alt" varchar(254));
ALTER TABLE "rivers" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','rivers','geom','4326','MULTILINESTRING',2);
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Brahmaputra',NULL,'0105000020E610000001000000010200000030000000D49FE775A1995440F858979456693E40323D1E4641AE54400C3A12A9735D3E40F8112580B4F0544000B6C38D54D53D4062C06C614504554034AE8920009D3D40C83447A242185540A039AFDF977E3D407A8A9CF7422D5540FCA54FB3DD4B3D40B265DD9E275A55409050FA5D3E463D4072AC21E340EA554038832D91CA263D40246F178C7AF25540C8943EA2FE433D404EFB3CCBFBFE5540344386838F573D40005F06FB5E285640683C4C16C5593D407A6840686EC25640E0721C8006513D40A0CC09981C065740AC206461DF403D4086A110D200505740A4B2C38DDE113D403620C236E1665740E8FD413FCC1B3D408098392EC9965740A43FE94C3D4F3D405A8BC55381B45740F4216461CA8A3D40ECBEF886A3C95740184CC0F063CF3D40BCA310D2FCD05740B8717F491BD43D4090FC025E81D557401867A8A59FBD3D40A4D3A6CED8D75740C081905A82983D4046B8BE1948D45740D0240198ED6A3D408CADE7F517B8574048600B6FCBF73C40F6B084ACBBB75740788FA16BFBD43C401CDAE03BC9C257408068E212E0823C40BED64385A0C5574044DBBC539D373C403A969CF75FD9574020A78920BF003C40E4DD7D7280D85740A095780F83E73B40E228FC238ED257405C3C8683B1C93B40E6134E5C37B55740A8590B6FD3763B40EAC432F44A99574054435D27DB0A3B40062E36911A705740D8BC71D566BB3A4032BCF886622B5740044897941C8E3A40A65F69C49F14574004AEFDFAE4763A400E471E46BDEB5640685EE21201373A4082350D3506D05640F0088DBDE62E3A40F6909CF7C9A65640580C2AF44A2E3A400283281D61955640B8088DBD7F223A40904FF5E9308756401C4934CB8E073A40267F8BE6327B5640E85CE212B1DF394054D4E03B6F725640CC843EA2D1A13940C00AB1A5356756400452A8A5C8F23840103EE458B56D564078C482E6A9953840E40AB1A5A46F5640F842D101D2DB37402097D6645D805640E8ABD49EB5A8374088F365A7718E5640BC25E94C1D6B37402294392EC9985640DC61F323AD1E37405CDFB75F7BA05640B01812A9BDC73640');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Mekong',NULL,'0105000020E6100000010000000102000000460000008C8AC553608557402CC0BF24F393404062C8CF2AA79C5740A2FDC9FBE6944040C809773840BC574044CA96486D8B4040229A39AEC9F557405EB14B4AEE5040404AB9BE19510F5840F6B785B74F434040FA0B77383E3C584070339ECE2DF73F40626806FB914A584038ACB27C0F7D3F40BA72DD1E6F50584058EB598AB2183F40347A170C297658404C0D19E319473E4082815179369258401C5934CBB9AA3D4064D06C61EFA75840CC85CAC78EF63C40C4BF5B50CCC15840240119E32A843B40222DFC239CC95840B81D9ECE21073B4068D409980BCB5840FC607F49C5063A409EF62BBA60CF584088E46A9B12AB39402486EEAF0AD95840945AE21242583940468D281DADEA5840C86656ED780339409664CC0DA9FA5840C4F8B51976D538408E8A8B66381359405C4334CBB1B8384070E37D72F61A5940FCCE598AB2A538402654BB7C301F5940409B2657A486384020E0E0BB46215940E418D83BBF6038407EE37D726F1E5940244B0B6FFA293840C453BB7CDD08594090224C161E7937403091C553D5075940BC399794A64F374092E61AA9F90A5940ECE6DE75481B3740F8353691F53E5940304BE21250D835402E2FFC232B41594044C993F736CC3540542FFC239A4959405033979498D935406E400D35854B594028DC413FC36F3540143C70FE0F155940BC7915463FC9344064612F576C075940D4969A31F86A34404C0203DE20235940B4023B05F71B3440C6797A15C823594034C8CD649B00344040F1F14C6F245940CCD8DE7541E53340926FA3313A265940D4AF82E69EE433407628C2B658475940E856905A26DA33400ABFBE192E5E5940F07FECE9C0DE3340EC0A3DCBD38B594080134C16850C3440B68F281D8F785940EC0DAFDF208E3340B21414EFF2705940C8923768C6B83240488F289D815F59402834A8A5F728324094AA10521A5F5940D481C38D3EF831404E1B4EDC1264594040CC413F0DD231407C77DD9E80655940E8B0598A7ACF314088EF541645875940F80A4C16EE1B324040B984AC6E9A59404855CAC7CAEE3140D00B3DCBEABF5940DC92D49E31F631407EE67DF2CFCC5940349B0E0C444F3240CA5EF5E936FD5940D4ECC62AAF3D32405EB8E775E22D5A40C8714FB3C96D314044BF2163E0315A403463780F1E713040E0DEA6CEB2655A4048E4AF7700242F40A60E3D4BDE645A4050DB750A38A62E4010A5392E07725A40D82ECB5FB53D2E40EEFD2BBA06795A4048171D18CC8A2D40226BCC0DA9775A40885D9BC9886F2C40BEB9E775C17D5A40585A9BC9FCB62B40A26E69C4C17C5A40E0B864F93EB32A40608DEEAF397E5A40B0CAAF77BC5129401049AA6B837B5A4078132E294DCB28404E75A3B1D9735A40A097197BD39228401ED86CE1A4695A40A0715A22C9772840A2DEA64E8F575A40D831504BE3F027405E8CEEAF30435A4000CAE9E4F49B2740206ACC8DDF3C5A40600C2E298D2E2740169A628A34475A40B0EEE2AA7FDD25405659BB7C4F4D5A40D037615CEA6925409A37995A43645A40B08C53E8BD882440EC12DA011C975A40588553E819DE2240');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Ob',NULL,'0105000020E61000000100000001020000006D00000028DFB7DFD29456405E98DEA938D347404686C553D58C56407A081CB439B4474070CDA64EF06E5640826748ADCC9447402EB55BD066595640347F93ABD988474058DA1AA9144356404856371C318B47407AB25B5063BC5540DC0F56A17ED44740225969C49B9955409A2B3ED6A3ED4740AE87FFC017515540D27DF6F447FF4740B0233691D616554094D24B4AB6DD474070DB54167BF5544034FCA7D98B0448403A15C2B6A9E75440427EF674D4184840BA74EE2F46E3544034C6D76F142848405A5906FB75DF5440E2D44B4AA863484092074EDC9DE754402038157AC072484010D8B7DF93F75440A2A5B5CD3E83484094677AD5BE00554064468954849648400C9E4A3F7FF85440641A908E51AC4840C27EC55347D754408E69AB7669D2484016FC7638079F5440D4F96D6CBB074940586CB442F6885440FE11B9EA50174940CEAC5B50FD7154400EC73A393D20494036C3A6CE601B5440269407064E3149402AFB136FE6A25340187DBC87366249408C63170C8B4F5340625D9A653CEF4940ECD35416ED3F53407A49EC1DA7104A40D228AA6BCA26534002C99D82A4584A4042819CF7FB145340ECA3DEA96D734A40ACED3CCBBAE55240AC1FF357F3A54A4058B3CF2ACCD352400872AB7687BF4A402E27AA6B8AC7524070D574A60CD84A4076F0D90167C152404C24900E88EC4A40DC90AD0897BF5240C8BA8CF127FE4A409837BB7C46A1524078C2C65E09304B4094BCA6EE5A995240743DDB0C68364B40B45C7A75EA875240ECAA7B606B444B406E96E7757076524064181CB46E524B40705540E8676E524062933062CD584B405E8FAD8886685240AC292D85E45E4B407670283DD15D524078C3C61E346A4B406AE4025E12585240C259C3414B704B40487AFFC03B4552403EDC11DD619D4B40763958B35E4752408AFE33FF2BA74B406281392E61555240382B2DC50EB94B40B8E4025EEE695240E657268BF1CA4B4078CDB7DF6D8F5240B8F8F99170E14B4024D15416339E52403403D135FCEF4B402A12FC23F8A75240C80DA8D97D034C40B889739B75AD524028717109071A4C40CED4F14CF8AC52409AD43AB9C7344C407A2DE4584FA85240A2C08CF179524C40C06AEEAF989E5240A6E64B4A036E4C409C183691EA915240024A157A8E834C40665540682C6C5240BCB7B54DB3A04C406295E7F5AA395240D6FF96C820B94C40E6412F575BDE5140FEE4AE1352D44C40B428E4587F925140D8B518171EF94C40EE2D1E46C0355140509793AB4C044D4052F0130F8F2B5140F0BC5284C4084D409889ADA89B18514084FA5C9B09114D40A259178C560E51401072D45269154D40D0B5A66EB40F514018B37BE0EC1F4D40FC74FFC028115140A0A507868B2A4D40801C0DB53C20514030C8292877434D405A75FFC07D26514036EEE8807F5F4D40B29721E3C232514016E17426F67D4D4016CB5416F93D51404AC3EFBACEB34D40DE64EEAF4A485140B8ABA43C74C64D40FC7C392E65555140F248DB0C24D34D407443CC8D187251405C9B932BB2EF4D402A28E4D87D7351408216A8D97DFF4D40CE6FC553217151406CC15284B60D4E40CA2447A296755140AEB041F3E0204E4040D62B3A76735140000A34FFEB414E404E9584AC676E5140AC99F67444544E408AA932F4D65F514000FDBF2413684E40A4799CF779595140B49659FE4C6E4E40F29E5B10774B51407682AB76FF7B4E40446151996D3D5140E6B5DEA9B0894E40DCE29F14FC365140A4261CB4E68F4E40F8A1F82698345140F6B5DEA9A88D4E4058A595BD4F32514092261CB46F8B4E40E2CDF14C241A5140287C71097C9A4E4050A1F806750E51408820E2464DB94E40B03D2F5749E950406A65260B80DD4E40EE2147A2E6CE5040000A9748B8084F4018F1B0A5F791504054BC7BE031394F40D4B9E03B146C5040183B2DC5C8544F4042759C773C5A504072C75284736C4F404697BE19685350405ECBEFBA9B894F406897BE19585B5040EAA2932B3CA74F4090759C77186C5040B29C59BE2DCB4F4090190D3555755040AD0FD46CF8005040788310D2C67A50407D9122085D07504062389220447B5040CFC455BB5B0E50409497BE194465504009AA6D86452D5040D24FDD9EAE6050408FB4442ACD3D5040BC894A3F4E5A5040EF32F60E92425040B0894ABF93575040490360D2B74A504076DF9F140B7150409DD7660C5F7350406EF7EA127775504097CD8FA8FC7F504070F7EA92B675504023FA882E0F8A5040F22047A2D99550407B34F60E5D9C5040A6769CF758AB5040814C410D42A45040D64369441EC250405DB644AAB9A65040F4E8D901580C514099FA882ED9A45040ECFAEA12DD405140D15D525E74B25040FC6FC5538C7B514007056012CCAF5040F6365833C4B55140B9D12C5FCBA950409AC37D720DDE51402972006676AA5040');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Peace',NULL,'0105000020E610000001000000010200000065000000EEBE2DF87A355FC0B4C7C6DEE2604C40F679E92DD40C5FC0C45CC3C12A1F4C4020C80416E1F85EC0146A379C5E0B4C40040C495AC9E25EC0D20DA859B9054C4044CAA18CB9AE5EC0A48FF6F49C0C4C4060744C77308E5EC0D8BBEFBAB7024C4054E1EC0A507E5EC03C851F5188024C40EA24314FDB565EC0944BB2B049184C40828D346CA70F5EC044DE11DD73134C40D11120BE9AE05DC02889BC872F204C407E4B8DE413CC5DC05A59268B471F4C404F14BDFAE6AA5DC0C847157A13024C40422FA5AF28965DC0282256A19BFD4B4084A9B95DDD715DC0484BB2B0EC064C402DD2156D64605DC0E414E2C6E2134C4036FE0EB3D24C5DC00EAF7BE0C6344C4000681250524B5DC006F75C5BC3454C40C5AFF38A86505DC056CB63956C6D4C406742533777485DC072C529A8F8A34C408601ACA9E1465DC0AEC9C65EBBD34C400561D8625E425DC01834CAFBF0F64C40F0E5C374AA365DC0E6E5AE13E8084D4092ECFD61472B5DC07823B9EA4E104D400CC004DCB1225DC09419E246FC244D4095526488AE145DC0E29ECD987B2F4D403AEF9A1843FF5CC03AA9A43C98354D40A47623A13DBE5CC0F89ECD9871344D400C43F02D3FA75CC094164510E93C4D40385ED81A4B9F5CC0BA2756A18E414D409408833D888D5CC0D8B37BE0944B4D4069C7DB9F1C7B5CC046F8BF641D554D40FC1FCE4B2E715CC05C322DC549584D40E06A4CDD57655CC0042F900E9E5C4D40637186BA0A535CC0A809D17567674D40D30A20448C495CC0C209D1357B6D4D40537EFA8472295CC062554F677E8C4D408740F0ADA6145CC00CEFE8801D904D40568B6E9F29045CC084B1DEA9B28A4D40CCC13E494BFB5BC06299932B9A7C4D404698E2F949DA5BC006F9BFA4A5804D402D76C0D767DC5BC0C459EC1DB0C44D401D438DE46AE45BC03C8A829A89EC4D4032DA894785185CC05032908E5B1C4E40B740F0AD901F5CC09C7D0E4045284E401E448DE4F41E5CC060F585B7AA394E405C03E6D690245CC0403D673232454E40F58F0B563F4A5CC09CE811DD366D4E40D34BC7D113525CC0CE9AF6743F964E408A37190A6B5D5CC0D278D4D20F9F4E40FB5201273F655CC0DAB24133429F4E40383BB6800E6D5CC09EA86ACF789F4E40BACA788AB0755CC0EE261CB4C4A04E40DE347CCBB4885CC02820E20699A34E40CF6B4C3DBA9B5CC0D4F3E8806CA64E40B86175D95FA45CC0F6DB9D02B5A74E4072930BD665155DC0A8719A65718B4E401301AC69B62C5DC08004FA91898F4E40610C834DC26A5DC0AA5DEC1D67A74E40D65E3B2CEB895DC02668C3C1F2B54E403A296B4285C45DC0E267C3C191A64E40AD714CF72CF15DC03AAC0706C5AA4E4037613B2657145EC064271C344FBB4E4008EAC36ECD245EC028B0A43CEBC84E404BEAC3AE0E345EC0B6FB226EF6E34E40B4ADB9D7B4655EC0BAF885B7A1FC4E40379EA8C68CC15EC076B8DEA9031F4F40D42D6B7C4CD05EC03EDE9D02A92C4F404DCE3E83F3D25EC06CE5D76F45414F40902394D8A6CE5EC00AED115DEF6E4F405B08AC2383D45EC04E2EB9EA56874F400332083315FD5EC09EFC85B7D9DE4F40B613830789155FC075DCA0392D005040ECEA2678511F5FC03D652942480E504027DA1567BF305FC0B50C37B6201B50401F22F7219C415FC0A91AAB104A2C504055D778F036535FC02F8111F7943350403F649EAF9F8B5FC08592228824435040CA83231B7ABB5FC055B8E120A6525040D27AB052F70060C029CD8F28EF665040143032417C1560C09B85AEAD416E504009376CEE121D60C0F11BAB50137750407A9DD2B4771F60C099932208E68150401B1F2150F21A60C0E1BC7E17A4945040B3D005C8D12060C0991CAB90269D5040B66A9F21A83860C083537BBAD2AE504016D83F15664160C039793A5360B850408FF3278A0A4B60C0374D418DAECD5040F571D9EE0C5160C0B51671E392D35040C3B9BA094D5860C033547B7AA2D650405E497D7FAD6660C00B1037B619DD5040BCA9A9F8E39460C0A1056092C5D25040DBFB613D81A060C09D682942BCD250402547E0EEEBAB60C057769D9CFFD65040138FC1298DBA60C01D10373651E15040BA69021115C660C021A3962275EF5040EFB48042C9CC60C02F25E57D5E03514002C691B307CD60C0B98B4B64A70B5140FE4A7D251CC560C0A9FC886EC71C5140364443B8D0C760C0970AFD48322D5140D125BEACBFDA60C03D9ABF7EAE3D51401189877C07EA60C0493459D8FF575140');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Danube',NULL,'0105000020E6100000010000000102000000480000001038CD0E887020402014F3D7FD054840E018ABEC511B2140CA7DF6748BFD4740B02A829002D422402AB86395B5114840F02BABEC957025400CAF8CF1085348405086630BFB5D27400220CAFBA5654840E09D1153E410284004D2AE1385834840E02A3712C04F28402805E2C61880484040828C677FC42840A83BB230D5794840400FB2265B0329404A83932BBA764840003DABECC351294070C7D76F03704840E0CBD0AB42FE29403A3BB2B0C7604840D05AF66AC1AA2A4042B96315755148408088EF302AF92A40201C2DC5794A484010FDF2CD40672D403AF90AA3F51D484020EB4486BFFD2D40BEBB004C451B4840E0AF9D78D3442F4068D7E880F32F484090B29D789BDF2F4030DE22EE3E2D4840C0956D41C9E03040A081932BFD154840584DEF8F0C7D31405010562109EF4740A096D00A6DDB31402421673214E1474058D43DAB4EB23240B49F1817C3F04740082E3037EEE83240D8BA004C2EE74740E0E64EBC93063340FCF70AA387D54740805A29FDE8EE3240CEAB8CF18496474078D53DABCAF33240CC886ACF8D63474040E64EBCDDE1324010172DC5CB234740305DC633A3C3324078A2528465044740287511B2CFC732400624A1DF88FB4640504CB5229CCF3240202E784362F3464018ED882921E33240FEDBBF2433E74640586FD7C4530233403412908E92CF4640205B29FDA01233401A977BE0C0C24640C83CA491BB273340AC52371C58B94640A80D0E95024F3340E2A052841FA846408022BC5C69643340E25FABF6979F464030E2144F52833340826D1F91C79D46403024BCDCE2C63340B6EBD0B5809846400096F9665D0A3440AEFCE1C6FA9246402030930006293440109DB54D6C904640B8E6144FBF8A344092095621A066464070A3D00A8FC434407A43C3C1415F4640706F00A12D5C35409E6C1F51D0694640D021E5B8E08F35403CC511DD6C6246408880747B24253640E0A58CF13C3D4640E881747B827536409CB06315EC5946402842CD6DAAB43640F2E633FFFB49464020A4969D58793640C0DFF9916134464078CA55F63AA836408E75F6F4111E4640E8C41B89E0F1364016B200CC71E94540409A22C31155374080590E40D1F2454028C3E11BC61938407C112DC5DADE45408044F6C9BB9139405A74F6F41ED84540F0ED033EAE103A4010344F67C4F8454090CD44E50D3E3B407AE9D0B586164640D818C396F9483B40FCABC6DE9613464060F3033E304D3B40EE0E908E12114640B01C604D69623B40EC6048AD51154640F8384882D1993B401E38EC1D1C1E464068B1BFF9E6D23B40D05DAB76CB26464050EFC9D027ED3B40529BB54DB92A464070EC2C9A830D3C4094E6337F67344640085D6AA44A0B3C405E80CD98773F4640808F9DD76DE03B40D6D285373F5F4640D096D744FAFC3B40227B932BF79B46400823FD83F60B3C40E44E9AA5C0A346407012EC724E283C407AA4EF3AADB246401068414817393C40D09DB54D14BC4640C8FE3D2B9B583C4042890746ABB74640B8289ABA4E903C40B0BFD7AFF0AC464008F6660706AE3C405418CA7BEAA64640A01D266054263D40C86348AD82BB4640004C1F26719A3D40703AEC1D8BA54640');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Paraná',NULL,'0105000020E61000000100000001020000004400000092067D12A3894BC0044F4A4E86A32CC0EE66A98B5AB74BC0C0B5B0B4F8B62CC0446FE3F86E0F4CC078857D81D5602DC06CB7C473D62A4CC020E30C4497B72DC022B4273D64324CC0B4A0C8FF02232EC07216F1EC290B4CC004F6E3E7C7AF2FC024505E0DA4F74BC0E0022C61301430C0528391C0B2F64BC07666F590203730C0AC198EA3E3FF4BC0083E99013E5630C0B6650C55F6364CC066052C6108A730C0B65B35B130454CC0B23CFCCAE7CE30C0AC9CDCBE7C4B4CC038072C61321131C0AABFFEE0757D4CC038510DDC409831C082C39B9766964CC032E1CFD135BC31C000BD61AABBA84CC058FDB786EBEC31C01C61D2E7AAB84CC0DC21DAA8B17732C018D20FF2C4CC4CC0384999011EE132C04A646F1E29AB4CC054580DDCFE3533C048DF83CC87B14CC0A00AF2F3BB6433C010B38A066FBA4CC0181C0305FC7B33C0F675808F21CE4CC04AD5214A16AF33C076D20FF219E24CC0A6EACF7111E233C0D4054325D3EB4CC096108F2AF4F833C0161754561BF74CC0A217C997A00534C09C09E0DB4A014DC0683D88F0C61234C0BE3976584C154DC03093DD453C2D34C07E9FDC3E72EF4CC0FC87696B91BB34C0BE6F46C2C3F14CC0F47BF590461A35C036FF08B8F4F74CC080B328C4151736C00EF53114C2FC4CC0088492C7862936C0B41D8EA38AEA4CC00CA17A7CD68C36C0A4A9B3E225EA4CC042DCE71CDED136C02C424DFCC9AB4CC086A917B3E6B337C0B2E5BDB9BD994CC068744749070B38C042A17975968F4CC03E9B06A2B15538C052781D66B0904CC08AC56231B8A338C002424DFC5CA24CC086B2B4E9BAF838C0F8C0FEE05CC94CC0F849B14C2A4239C0B25A987AB4D04CC08E288F2AF86B39C01C5E35F177D04CC0A40DA775B28239C04CF431149BD04CC0741144ACE69939C0EACE72FB26DA4CC034B95160FEB639C01AFF0878A1F14CC0485EC21D3CFF39C06A2F9FF40D104DC00A1F1B50065D3AC00041B0A56F2E4DC00E8781F6C2BA3AC0CEA7162CCA454DC0E4211B10D8023BC034B2ED4F204F4DC0E80D6D08AC1F3BC054E9BD39D46C4DC06265C25D5B9C3BC0CC15B7FF4F724DC09C116D08FAF63BC02005A66E72894DC0AA3F66CE3A593CC04EA9162C1A9D4DC0A82044ACEE0E3DC0B0464DFCB7B24DC0886588F062323DC042C5FEE0E5C24DC03E3355BD2B673DC0B243B04563CB4DC042196D0878B43DC0D00943A5BFD34DC054543D729DB73EC0D2F2F72621084EC00A38B88605453FC0EEF6945DB2304EC0C6351B501B883FC0022E65C7AB4B4EC09855A03B15C83FC07061987A1D594EC037320A0B8B0640C03246B0C5FD5C4EC0C621F9F9D22A40C0E0C7FEE0325B4EC010EFC5C64C4740C0AA5324A01F524EC09AC669376E6440C0DEDBAC28BE3E4EC03AAF1EB97C8240C0A893CBADDD1F4EC03AFE39A1279F40C0B20DE05B2BEF4DC03302D7D7C8BF40C09ED50FF2A7994DC01499D33AFBE740C0544F24A09C554DC0CC51F2BF2DFF40C07A96051BF9364DC0085CC963D7FE40C0');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Peace',NULL,'0105000020E6100000010000000102000000020000002708834DB2745CC05C5B8954E85A4D40D137194AAA6D5CC0CEE3115DAA554D40');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('2','River','Congo',NULL,'0105000020E610000001000000010200000045000000D83982EFD03F3A40B42AD6735D7C27C020A9BFF933F039400C4CF895974E27C0E0B8D00ABDA33940E47054251E5F26C0B84159930FB63940E8BE0C442F7C25C0006D525994773940A8819FA317C024C0A0B433D4BC72394004C046B1932F24C0F8D655F67E803940FC1973AAF9E822C0A8AEF96690A539407496248F1D7F22C0885AA41157EC3940D03FCF390C3322C0D0BAD00AD9143A40C4B7E3E74F8821C05848F6C9F9703A40DCF0EDBE438B20C0D0DFF22C67BB3A40300BD673CD5220C0C8E38F6389DB3A4064DA3F77DA1720C0488B9DD75BEB3A40602D949CACAA1FC0C85EA41165E33A40400DACE7CA911EC0E084636A67023B40785A9E7320F31BC0B8EE660760043B409816949C1C7D1AC078ADBFF933EE3A409097F3C8E57016C070697BB55DFB3A4060DC717A4A0215C0085FA41147F23A4050A8DB7DD70814C0A0BA33D4FCCF3A4098BB26FCA8FC12C0D8C20A780F5C3A4028BB6069C15611C0684A9300FA223A40A84C5DCCEA4510C0986818ECB3033A40600532109DF10DC0F008EC722BFE394050A005174DB20CC08872EF8F00F239401038765463F409C098B633D4D4E5394060586F1AEE3707C0787CC6334DE03940A060E3F4F4FC05C0A012C39654DE3940E09F273901D704C048CE7E52A2D93940708950956A1302C0080F266006D43940606D18A2B08AFDBFB0CAE11B54CF3940005518A2DCFFF7BFD860DE7E5BCD3940E0CF03F4A0ACF5BFA018FD037BAE3940007022798C32F0BF90034FBC6B8D3940000E60DA0DECE8BF50DAF22CED7A394000A81B96C93FE1BF781460CD6E8339400018317647DCABBF70B433D4D06839400098B8C25B1FD63F88ABF96600EF384000429D88FB3BE13F282071DED34A384080EC2511C403E93F9023488220BC364080BC6D495933FF3F18C955F6DA583640401B870EF808014068AE0A786DB635406074799AD5200140201CE5B87C443440004A303F72C6FE3F988EBFF95BE833404074C63B757CFD3F90E0144F91243340C0757483762DF93F181C1F2665B63240C0E69942AF0AF33FC0EE2560D27C3240004AA4C2E829ED3F087A4B1FFB55324080E5D358A5C8E23FE0538CC6003332400024857BAC8BB93F28A344E57D9931408024BC6910C5E4BFC868D74412863140007D3A1B75CDE7BF98ADB8BF84DD304000D1DA97F19CF3BF60B2F22C3768304060405949D6DAFBBF70AF004213F22F4090BB72B7FAB205C0D8805C309C013040E06735ADF3470CC080392601D0812F4050439FB060D70EC0C037C3378C572E4040AA4F58C05F11C0D09F630B4B2A2D40D8147C5186E113C0C08EEF304E642C4008D4D4432AE313C080BD852D35262C404001CE09CD1414C030369ADB20A72B40A09BCA6CE60715C0601C4F5D4B382B40688CB95B1D7415C03055BCFD6EF02A401078D1A6D30917C060511FC736DB2A40C87B6EDD131B17C040093E4C4EC02A40E879D1A6FB7417C0609C3AAFBB0C2A40087CD1A603F017C0E0E4B8606878294068FD1FC2DBDC17C07077B5C315A52840D8AD67A37E6618C0');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Lena',NULL,'0105000020E61000000100000001020000005C000000C625EB12BAFE5A405409A8D987004B40F6AAD664C6025B40DEC1C6DE0F0D4B40880A035E9A025B4066B45284AE174B407A77A3311BF25A401A2CCAFB9A254B40E424EB12A1CB5A40A21D5621EFF54A408C2B25807BC15A40CCFED03581EF4A40BCA9D66456BB5A402CF15CDB31F14A4084F0B7DFDE865A40AE3F784356F14A40EEA4392E966A5A40027AE5E3C5024B407ACD95BD6A525A400AE885B747314B40AEBF21E3EF495A40D8070BA3C2704B40C4D032F4DC4A5A400E0F4510DC864B402C9EFFC0486E5A40BAFF33FF20EC4B40B415773849725A40C8D09D02541D4C40BE9EFF40C58F5A4074B952041D3E4C40F2E24385088C5A40442A900E4B484C407201C9F0DD7E5A40F878AB7659534C4094450D3529775A40125789545F614C406C8DEEAFB4805A406691F6F4CE724C4050B3AD08CD945A40109593AB54814C4056659220AAB35A4004514FE73E8E4C4054BE84AC1AC25A400AFCF911ABA24C405E2FC2B62ED95A406CB4189784A64C40024BAA6B9FEC5A405A881F511AB84C40FE0DA01438055B409E4B157A51E14C404ECA5B50F8265B40862D900ECD054D4028197738343B5B40AE45DB0C23154D4090490DB5155F5B40EEA8A43C3B244D400AFF8E8390805B403C8EBC071B484D40C888170C7BC65B4094CF63153B644D40AED4953D5EF55B40848FBC8745924D40CE978BE665165C4016FD5C5B7CA64D408A9B281D23295C40103B6732B3C54D406651AA6BB1605C40A05AEC1DCBF64D40D0B81052949B5C40485F89541C3F4E409A26B1A571BC5C402018A8D9BF5D4E40EAE26CE131DE5C408AE1D7EF4C5F4E4040E0CF2AB7095D409C0DD135B74D4E40B28B7AD530375D4026584FE7792D4E407C116627F75D5D4088797109B0014E40F25CE4D84D735D4078E611DDB1F04D40CA3E5F6D50945D40006860F877E64D401ECB84AC3EAA5D40F497F6F44DF04D40A6C1AD083BD75D40C62EF35707154E40CCC1ADC8C9DF5D40446CFDAE36184E406669BBFC32F45D40F62EF397D11F4E404C7E69C4930C5E40ACF1E880E9284E403C7BCC8D07215E4090E7111D91304E40D4B8D6E4AB295E403C1EE246DA334E405E8206BBC9325E40D6CFC61E093A4E4034A8C5D388435E408681ABB64D454E40D6BC739B884C5E40B42FF3D7594B4E40688506FB45E35E40940DD135BB4B4E40C4196627AC3F5F40BA3D6732FA604E40ACF5A6CEBF945F40BC30F35721874E402C3BAC593C0F6040BEE2D76F00A54E40FAA11240E6266040B294BC87E5BF4E40AEA5AF36C73760407A10D13567F44E4020983BDC6F3D604068146E6C8D124F40B45A31C5973E60402237908E25354F40206FDF0C703B6040E61F4510245B4F40A06408E9252C60407662EC1DB4BE4F4090EC90F1A2096040AE287FFDC4CC4F402C79F5E91EFD5F403AA73062B5DB4F4078C610D291B65F40E70FD46C5D0E5040C0BA392E96605F4045EEB1CA842B50408C1966A705335F40C3739D9C2D415040845DAA6BA4215F407B884B64234F5040A848FC237F0B5F406FCD8F28CF765040281FA09499EC5E40C10460922BA050403C1B035EF2CE5E404D9FF96B03D75040005CAA6B56C95E40A5D966CC90E95040ECD6BE19BDCB5E40C9547B7ADDF85040C0A7281D8BEF5E407103C35B521A5140C01866A7E2045F409152DE436E3E5140047C2F57B9145F4095827440BD4B51403C947AD5C7275F406FCA553B88555140D0DFF8868F445F407D2A8234A3715140B480CC8D065F5F4015577B7A507E514004C2739B287A5F4069CB553B958E5140E465E4D8337C5F4001F84E41629B5140ACB5FFC082C65F40A7FBEBB709A95140B4485FED84D55F4081B7A7F3FFAF5140F093DD9E76DD5F404728E5FDB2B751408CCAAD0827DD5F407B9CBF3E47C05140DC18C9F0A2D15F40B1DD66CC35D5514010E2F88608C75F40C3C9B88423F5514058F6A6CE71BB5F409929E53D780452401C30146F23AC5F40E300896ED7125240A8ADC553C9805F4011C0E1201A155240446B1E4625275F40D7C37E97B3295240C62B146F1FB05E40D345CD32043A5240');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Chang (Yangtze)',NULL,'0105000020E61000000100000001020000006D00000080E6F14CDCB2564062A7D7EF732641402CC86C61B3C95640F0F5F25713294140EE85281D8A3F574002B8E880D60C4140C43BAA6B9B755740F0F5F257132941407E68A331F9895740C6AE11DD37474140C205DA81E498574078C3BFA4B0534140F2E3B7DFA0AB5740643ED4D2565641406ACC6C6142C05740BAEFB8EA044D41402622C236FDD75740E04EE5E30A344140523770FE3D0058400869CD9829F140407AB9BE193B1A5840B050821A29D740403ACBCFAA19425840288D8C71519E40409246E458CF5C584020521F51F46340407E063DCB5A8A5840C26FA4BCAE2440408E0D7738059858402A0CDB8C3F014040D2BBBE19A8A258402CBEC38D96B03F402C073DCB8BB15840481CF086145C3F40F4E41AA9B7AC584054444C16A4263F401ED409982DBA584020BD60C404AD3E403EABAD0800BF5840805FD101C0573E408AA4739B2BC6584020FBA40820403D405415B1A5DCCE5840F497780FF26E3C40D88C289D9FD15840ACA889208A5A3C4044E27DF2BFD65840F8D0E5AF7A343C40C659F5E982D9584078118DBD7D1F3C4086DB43C5CFDB584004AEC30D3E043C40C8D40998DFE058409CE393F724C93B400ACECF6AEFE55840C4DB59CA358E3B40CA4F1E463CE8584000C071D573733B409686EE2F16F35840BC213B053E2A3B40E2D16C61C0FE5840881A0198A3143B40729B9CF7FB0859400074F323DC3E3B40F264CC8DBE0F594094EC6A9BE37E3B4034EAB7DFC217594090CEE5AF94A83B408A5758B3151E594040DFF6C0B1913B40EE49E458C420594048075350415C3B40E8BDBE19331C5940C0F3413F74CC3A40C4612FD7001D59409C10C72A49603A400832995A502059402495B27CA33D3A405E02035E5827594070984FB313373A402892C5D3234059400C3923BA29423A40A82525006F6A5940A0661C80A4873A40DA5F9220AD74594080E1302E90873A40DC4E810FB6785940E432E94C15693A40683AD3C7607A5940440253508D383A4034BC2163C77F594074E66A9BB11A3A405ACA95BD599C594024D6598AE9463A403A531EC668B05940BC762D9103503A40B06E067B6EB9594078405D27AA643A40BE97628AC7BE594004EC07D298973A40D0E2E03B4CBD5940DCFF18E341393B40BC2388499CC15940D8556E389F5F3B40EAFA2BBA68C95940D4D7BC53316F3B407E68CC8D1EDE5940C065E212A3E23B4004A6D6E4CAE25940189A154669253C400E3936918BF259401C3112A90C553C4010C55BD01EF65940A8AC2657AA7B3C40324A47A272F65940A4A6ECE904AB3C40080366A7D6145A408CF8A408CDAA3C4054A7D664702F5A4074FC413FF7C63C4046305FED37475A40443DE94C55C43C407CEC1A2904635A40F4701C8067E13C40BA7840687B745A40F8AA89207CE03C4032A5392EF7795A40B4CDAB4214033D40DEBD84AC50A75A40C8EE302E7A8C3D400096281DADE65A40C87FF32376EC3D4032113DCBF3F85A40B4A94FB329243E406030C2B6B8135B40C0303B055C943E403A89B442BA195B4094535D2769BC3E4096827AD5DD245B4030656E3818DC3E408E90EEAF44375B40A0B0ECE9F1EF3E40D664F5E9705D5B40AC6CA8A590023F40D6EAE0BB5E905B408C73E212D0053F4054C9BE19F7B45B4044CF71D5F4EB3E40AA7E4068C3CD5B4040D5AB429EBA3E40AA8CB44226E25B403822C72A37613E40D4C384AC15025C40EC2801980B5A3E40688DB4424F0D5C40A843E94C67383E40924236912F1C5C406C67A8A577D13D409249707E21265C40F4448683C1BD3D40526F2F570A325C40C411535073BE3D406E988BE69C3A5C40FCA01546C2B53D403E2BEB12383D5C40B8DD1F1D0A8D3D40FEEDE03B2C485C40E002DF7578763D4018DA32F4156A5C40BC2D3B05BEE43D40E8284EDCD67B5C404C983EA262103E406EB1D6E40F7B5C40D4D9E5AFEB373E40621BDA013C835C4034DAE5AF404D3E40DC4E0D3568935C40A09A3EA2D1973E40204F0D35C9A25C4050E21F1D6F983E40D8294EDC68B25C40F8E11F1D97843E4048BDAD88FBD85C4064505D275E033E40EC75CC8D77EB5C4084B960C42BDB3D406435258078FE5C402C34757231CE3D40A087DD1EDB105D408804DF75B6D63D40B0844068802C5D40F853FA5DAE0C3E40DE9C8BE6133D5D4004CD71D57D683E4076338849E7545D4088757F49DCB13E40B222773855665D40EC535D27C0D03E40E63AC23626785D40186DA8A5DF1A3F402842FC2379915D40C8E51F1DD9613F406C6B583339A35D402088F32323D23F4094F77D723BAF5D40229800CCD60240407C2E4EDC48C05D408A1DEC1D4A134040FA50707E3CD55D4090D26D6C3A1A40405269BBFCBBEF5D405287EF3A8A1140403293178CF4245E402876E2121F9D3F408C59AA6BF53A5E404CD50E0C25843F40BEB6392EED765E40FCF6302E376A3F40');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Nile',NULL,'0105000020E61000000100000001020000007400000070FC2A7B7B9A40400088F22FFCBCD03FEC84B303F897404000B7F22F7C67DB3F08DDA58F5172404000D4B18DADFBF43F1C5B57B49766404040603A165EDDF53FC094C414F84F4040007211BA228CF73F4C6191E14841404080C18F6B8B96F83FBC56BAFD652E4040807B11BAC6B5F93FB8FDC7B1D71E404080AFA7B649A7FA3F18E9196A17164040404307E362EAFA3F2CD1CEEB65144040405E5261B49AFB3FB878DC5FB5254040C0A6BF01A8E3FE3F0894C414CD254040E02D355619A2004068CA947E18184040E0989BBC9FA901401819154FA7FF3F40A05AF4AE0B460240107BDE7E55C43F406087ED74EE57024080F5F2ACB6A93F40000F76FDD0220240587641C84B783F40A062CB5242C00140E8754148C15D3F40C0FE0123768B0140B0383771AF6B3F406065CB52006002406076414889793F40C0C1BDDE6134034048D90AF808753F40E0E1A593414E044018F155F686703F40C072CB52E4670540281AB2851F763F4020E6CEEF729A07405039377165903F400075BA411BCC094070DA0A7841B83F4000791D0B537B0B40AC3AD28807024040C093CB52C4E80C40F05182EFC4BA3F40D02958B5231710403858BC5CCB9A3F404070FFC2E75E1140F0D90A787D9A3F40F072628CBFBE1240B099636ADBBE3F40E0CAE03D58AD1540C02826603EAC3F40D0C2CF2C4BB81740C07B7BB5F7253F40204A47A492511B40A8F1F22C39CA3E40F0B0739D14F71C40089800A191973E40E0B2D666402D1E40B8787BB55B753E409022DA0387851F40D8555993D5493E40B80979A76C252140A06DA41197433E40F88A2A8C60D12140F06DA41175543E40C0AF4CAE066C22402838D4A7E3843E40681416DE7ACC224010585993D1CA3E40D82C615CF0EB224088F68F63EF1F3F4030C6FAF573DD22406894C63353523F4070DAA83DE3CE22400069CD6DDC893F404030FE9254EB2240907E7BB5AFC83F4008D90B07934423401C5DF4AA4014404040EA7FE17B142440047C7996A61E404028076896D9702440AC4846636A164040409F64F9FAE0244038FA2A7B7F194040F8C52352B523254084D56B22DB4A4040D01CDC70BA4226405435981B14584040F0DE346302F12640B0A238EFE35F4040A8917C449DFD2740F4D56B22A963404028AFC7C2BE442940B879DC5FC05F404070FD4574CBFD2940BCE67C3339534040B0F90B079DB02A4090A8725C99284040D87EBDEBC63F2C40A0DBA58F76204040A8252E29F9EC2C405472A2F2BC3E4040E8588AB8E3442F40743835529847404030E412411AE42F40C4383552F35940404C73892000383040E0FB2A7BBD7940405822D1014770304080A09BB8EFA7404074F33A0574A43040F87E79964CCA40405C0C868332DF3040F0A438EFDBE24040A80D8683192B31408CD131B5C6F040400CF49DCE398E3140BC561D07D3F44040B006AFDFEFE93140D0B2ACC94CF04040007C892083323240E833FBE446CC4040683A45DC0DCE3240ECE4DFFC99B0404050D3413F526C334000A7D5255D9440402C2C34CBD27233404CAD0F93617540402CFC9DCE81663340BC83B303845240403CB7598A943F33400097614BE40B4040D8EB29F42ECB3240E016154FAB7E3F40449037686D263240902AC3965C4F3F4038CD413F1C0A3240503E71DE03253F400C0EE94CF7083240289D9DD72DFA3E403C0EE94CE11332402881B52266D23E40B8C36A9B9D343240709800A161AF3E40F0B6F6C02968324030F72C9A977E3E409C451C804506334068D40A7805593E40006167FE5ED23340F06EA411FF8E3E405021C0F0FD1534406027C396D2953E405CE4B519D0313440709A9DD7695D3E40A0B282E6568734403004A17470583E40B03B0B6F8FA6344070B3E8559F9C3E40D4CCCD64FC0D354030C35C3034173F407C9F3768F49B354068E3E11BFE6E3F40BC89ECE9C3183640B0147818B9C53F4078BE1F1DDD7136401CB2490093004040607E780F2B9E3640DC45A92CC0394040A074A16BC8BA364030E3DFFC654B40405497C38D62DC364064C1BDDA5F5F404084DC07D2B2113740607D7996066E4040D88B4FB3D9593740C0FB2A7BCB724040B878A16BE8A837405C6C68859270404090E007D2D8FC3740741AB066C871404070D593F72390384064F153D7B06B4040245545DCCBE238407CFEC7B17D4B4040387967FEC5533940202E5EAEF8424040184E6E38AC9C3940046C6885BA5C40401856A8A569E03940C8EDB6A0E55F4040C878CAC705013A40CCBD20A4115540408842FA5DAC153A408471A2F29B0F40404491154675233A403829266004C93F40345C45DC8F7D3A4030D56D41B54D3F4064AD60C43A193B4000CA969DFC153F40D80D8DBDA64C3B40F81078186DED3E4010B69A3127853B4018EBB8BF52DA3E40281A6461DDC43B406817B28561D63E40D02F12A9A4093C4050ADAEE886C53E406CCAAB4294443C40589C9DD789CC3E40E09EB27CAC743C4008754148272B3F4054C13768724D3D4058E91B892E3A3F40509D780FFDA63D40B83E71DED33C3F40502B9ECEE51E3E4040A8747BF02C3F408873E21253043F40A87E18EC95083F40BC0108D223883F40');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Amazon',NULL,'0105000020E610000001000000010200000063000000D6B026BECCEA51C0288B7D8139AC2EC0D00CB60013E051C0ECAB3CDAAB952DC04A1053B7AEE351C0E84710E1E1922CC07821648830EA51C0AC7CE04AE9272CC06BDD1F44DBF651C0B03DD673A9CD2BC04AA0156DC10852C08046AD177A7A2BC0229ADB3F0C3052C0ECB4EA2141F92AC06A90049C264E52C010D36F0DFFD72AC0A86EE2B9FC6352C08CA6137EFC082AC01D91045CF47652C008B3248F05FE28C0EED8E556C37E52C044F1CB9C916528C04E0C190A3B8952C040108BF5D3E726C026B089474A8952C07CA1EA21298E26C0EB6EE2B95D7352C0907EC8FFA66026C075A5B223166F52C06C24D6733D0F26C07ACE0E33737252C0846D5425AA9A25C0F8125337B47F52C054D0BA8BE8C924C0A54923E13C8352C0308A7647085D24C06279B95D6C8052C09C914DEB7CB823C08CDC824DAE8A52C0ECA79869EA5C23C094C19A986E9E52C0F8D12E66F50E22C0B880F3CAF69D52C0A8D9050A4A7A21C06A246408979552C07CDE3F77FA0521C02CBEFDA1EA9E52C0582FF895BFC720C06FCF0EB342AA52C0A014AD17562320C07B626E1F23BA52C0A873751771581FC0FE2B9EB564C152C0C0B4569295D81DC0120A7CD3CDCD52C04838DF1A56B61CC0CCC5370F53CD52C0A0FC717A82571CC0CC737FB0B4C852C0D072E9F1A10C1CC0AEB4263E4ACA52C0581831D3441B1AC05C0D194A9FC652C0D80F949C34F418C0E62B9E750FBC52C030398D629F4318C06210B640D0AF52C0B0CD89C568E117C0BDB3267E989352C0F03B6406388F16C0124DC0171E8452C000AE78B42F8D14C022A94F5A5A7E52C018056B40FD2D14C004BA60EB9E7352C0804B4CBBB1E313C0CCDB82CD455F52C0407CB95B85C711C030640B16EE5652C0386DE2B78CB110C01A751C67CF4D52C060F36A401D2610C089606E5FE74852C060C28A0239780DC06FFDA42F3E4252C000E0AC242B700CC09E8C67A5D03752C020E883C84BF50BC057E8F667741E52C0707AE3F424D90BC000BF9AD87C0852C0A007A6EA5D5C0BC089C5D44565F751C0A0E2E691DB7C0BC0278B6725BCE251C070534DF8B1D90DC00921644803D151C0609557CF95E00EC0B3317559A1B951C080BE162838AE0FC0FD2DD86241A851C0C04E7654011B0FC03E53973B649751C010D8FEDC194A0FC08E4FFAC4418751C068A54F58F84510C09B07198AA27751C0585B34700B4811C0057856947F6A51C0E0236406401611C0649D152D356051C058EE30D3848E10C0CEE4F6E7D25051C0B0FD94D92CFA0CC055C2D405FD3C51C0F056C1D2E28B0BC0E5495D8E660451C0301BF1680F600AC0E86B7F7072FD50C0B033D91D71BC09C0173CE933ACFB50C070F2CE463DDD08C0F397783620EA50C0B0B69B135AEC06C0E8DBBCFA3FD850C000C9E6919BA805C01C0B53772EB650C0004935AD134605C07B8CA152A7A250C0C0AC384ADAE303C07FC2713CDD7F50C050A6FEDCE9F803C08BDD59B1B37050C050EE4221EED204C000142A9BB56750C030D35A6CBCDF04C0C6D9BC3A1A5C50C0A068BA98257A05C0CC9E4FDAD62450C0B00DE0577E2F0BC02A01194AB60050C0D0A50517C7F20DC078C6C4F3B0964FC078158D62FF2310C0EAC861AA455E4FC040F820FFDBD80EC0FE942EF78C344FC080554DF8C1500EC0004C4DFCC8E74EC050439FB060D70EC0C85FFBC32CBF4EC0601743211E280EC056E683CC4B4C4EC020F494D98CCE0AC072E1E61556F64DC0C0D3AC24CBA509C0FC39D9213CEA4DC040C7D580AA2209C0E6B78A0637D44DC000CA72B75AFC08C0DE0009B832584DC0708D2E7316BD0AC0E0F2945D8E444DC0504FC1D262CF09C0A2FC6B0170284DC030DE83C8DBB109C01A434D7C1CE24CC01094B35E984405C01AB38A06EABC4CC060C820FFCBF603C01C33D921E3594CC0E0129FB090D503C06691051B4D0F4CC0E0FF6443601001C09C6EE3F83BE94BC0802BFB3FB31D00C06E1FC890E6C14BC040E555AC1F31FFBF04E8F7A654934BC0F0B4E691CB1901C0D2A9EDCF37674BC060016543B06701C0300CB7FF36434BC0904B0C51C48503C0E4E5F7A6CD174BC030A39B134A7D02C07485CBAD5FE54AC0C035719414A8FFBF08F26B818BBF4AC000957431EB3FFDBFC89DB362D5374AC08064C6E969E4F6BFF4354DFCE2E449C080E2C24C935CF1BFA09AB3E2078049C0004DAB0654ECDEBFA836EA32044749C00090176B33D0AC3F');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Mississippi',NULL,'0105000020E6100000010000000102000000C000000064D889C798AF5BC0E41D0469055D46408B64AF467BBB5BC074C8AE13E7564640FFA8F30A61C65BC04239EC9DD5604640830F5A2115CD5BC0B054D412FF67464030D24FDAC9D35BC0AA957B60296F46402B13F7973BDB5BC088C5119DE9734640FDF70EB3ACE25BC0DCCFE800A97846401F327C53B3E85BC03444C3C1EB8946403F1A3115DCE95BC09C5C0EC0A4A74640273C5377B4DC5BC0D031157A2503474088684CBDFADC5BC0FE8A0706801C474057FBAB19FFDE5BC0BE24A19F54254740FD317CD302E15BC0724A6078432E4740483C53B705E45BC090D685B74938474004AD90F9A0E95BC0FA210429C64A474082EA9A98ACEC5BC0363315FAC0544740459545E326F25BC05AF9A7997A5E4740CA35194A98F75BC0BE6648AD266847403CFF48A001FB5BC004CA115D7C784740C0FBAB29C7F65BC04C1CCAFBD88D47401AF80E733FE95BC028F70AA368A54740A6082084EBCA5BC080DC226E44CB4740BC712321BDA05BC0242FDB0CF8F44740A6DEC374818E5BC0587A59BE6CFB4740A41BCECB6B745BC0586CE56349E74740C802838D083C5BC0F88A6A4FCFE14740E8A990F58F345BC0168430E28FDE4740C80520B423245BC0642404A96AD74740098EA834C0135BC0EC31780345D0474096D589C7610C5BC0B8721F5104CD474030BAA1E6EA065BC0ACD5E8C01ECB47402FB367C593FC5AC0D4A552049CC747406131198AFDF65AC0A6E6F991B8C54740D7B8A1D292B85AC024BE9D821FE04740C966E923A3B05AC0EE2EDB0C10E947405F0A5A35E6A15AC0CE2B3E96ABF94740B0E49A58F7995AC01AEB96C8A0024840D29CB9D5F28E5AC0B44AC381110448404AEE717CAB745AC0B239B2B07B0748402AF10EB34D555AC02AA018178D0B4840DCAF67ED053B5AC04AB12928F50E48407142C79100305AC07A0DB9EA621048406F52D8A26DF159C05858379C7E034840C840C75163CF59C018F2D035D40B484052927FB037B959C01266AB76820748406646013FF78859C076E35C5B3AD347406472FAC4CA7259C02898DEA9D1C64740BB4C3B14436C59C0EAC774A63EC547406E01BDD2216059C02A46260B53C24740226BC097975959C0A8317843C4C04740CAEC0ED3BE5659C052D5E800A8B6474016DF9A98E85359C0B497DEA986AC47405A783472564059C01E64AB76E7954740C72919628D3C59C06EC3D7AFB986474038EC0ECB853559C09C6D82DA876A47401D156B42BD3159C0A4EB33FF545B4740CAA7CABE402C59C07C997B60694D474050DE9A98C32659C09C283ED6823F4740AC4401BF812459C0826F1F51FD114740C2FC1FC4BE1659C010ECD0B5D7AC46402C63866AB61759C01E5C0EC0DE8A4640C4146B42661D59C02C99189781744640786386AAF32859C0D4354FE7B45F46407C9DF3CA472859C0467D3062EF514640B6B8DBFFA82359C0DE836ACF50444640F40D31356E1E59C0B40F900EF83D4640D6D3C3F4351959C04AF4A7D9AC3746404496B9055C1159C082836A4FBA2F4640EC4A3BBCC30259C0AE233E96E42046407058AF86E7FA58C07A122DC5E5184640D676347208E858C0BCCA4B4A4E154640031E4286B3E358C08A7FCD58780F464028FFBCDAA8DB58C0062A7883A3044640F916087956D758C00475F6F4D0FE454022D6602320D858C0A641C3C117F54540846523A992D958C0B66DBC0703E345400AB43EC959DA58C028A48C7146D94540EC05F7E725D858C04A334F671ECC45404A54120003D058C0583D260B5DC145407A05F7FF4DBE58C0FA13CA7B69A945401A57AF6614AD58C0F8166732BE904540776B5DCE63A658C08E806ACFD48345407E08949E2BA758C05624DBEC7A80454002911C6705A658C074A9C65E00804540C367C0D7829558C06E50D452D36F454017237C93F67D58C0E85D48ADB3654540840ECECB6F7858C094BD74A67B6B4540D0D0C3B4386958C082AC63950D6B45408EF2E596645258C042681F514F6C4540488F1C67CF4158C0DCE233FFDB5B4540EA7D0BD6433058C04A19046921514540AA4AD8E25C2D58C0AE7830628A464540E165C0D7DF2758C0927830E2564045404E9C9041251D58C02A4C379C933E4540564AD862431A58C08CE5D0B5D3314540AE4D75992E1658C048304FE7BF1C454048E70EB3541658C05000B96A2B124540C7CB263EB40A58C0AE2F4FE705FA44409AE3713CB10658C0300D2DC5D2E44440EA9B9081330658C07AD9F99141C74440C827B640970158C05A651F5124C34440A8B3DB3F5AFD57C006540E40D4B3444050463BECC7F657C096864173EB8E4440B1ACA15264F557C01E3BC341D67844406A91B9DD28F757C0DA5CE563E2614440F22A53B7F7F257C0E699EFBAC64A4440E88D1CE7B0F157C01A631F512C404440006F97BBEBE657C028C985B7EE2B444068CEC374F3DC57C068510E40871B4440A2FABCFAAAD457C0E816A19F2B004440292A537773C557C0442415FA19EF4340F7B578B61EBD57C0EA9452045CEF43407E786E9F4CBB57C0E8AF3A39D9DC434008429EB54AC457C09A97EF3A14C543408A3E017F71BF57C0D4D4F991E2B843400E4C75598DB757C070E50AA3079E4340D2BF4FDAB4A657C0523089D4E191434060433BECA04B57C02A0BCAFBB2A8434098E30EB3853F57C07237C3C144A3434082915614113657C0BE3DFD2E49844340D29ECA6E052257C00C4B71893D70434047BD4F1ABF1257C058DDD03556544340277CA80C060357C086BE4BCAA64E43407CDE717CE9DC56C0D2B7115DD25543406666FA04AAB856C044A3639549514340DF2B8DA4B19B56C06436C3C1C065434090BEEC08C09656C06636C3616F664340DC982D68B58D56C0841E7823196743401EEE820D418956C0B88B1897AB65434014403BCCB38B56C0CEE06DAC1357434082A6A192998D56C07084DEA9DB4A4340D61342268D9356C05E2BEC9D333843406A625D8EA99756C032FB5521B7214340FA80E2B9968E56C0EA6E3062830E4340AB356488EE8156C012E6A75970FC424058023155B07A56C0FC3760F8F8FB4240E942D8E2EA6956C046CABF24D2DF424084615DCE726356C046DBD0B508DC4240D22A8DA4AC5E56C0523AFDAE1ABD4240BB086B020A6156C090992928D5A94240D1750B16DA5856C0E0D9D0356D8A42404C0FA56FEE5156C03A58821AB58D4240CF90F3CA964656C02A39FD2EE279424038BDEC90994856C06C4DABF60D6D42404A086BC25D4756C03CA93A39E75842400D05CE4B865156C072726ACF4C4E4240ECD8D485E25F56C000A200CCD1404240492E2ADB896156C02431C3416834424079B3156D766556C0DE07673229224240322453F76E6A56C05C41D4D2FA024240405EC0FFCA6B56C05C41D4D2FA024240281342E6FC6B56C05C41D4D2FA0242408A79A88CF86A56C074D7D0F5A8FD4140241342A61E6B56C08E6DCD1857F841400A43D8629B7156C08C88B54D53E64140A9E3AB29D17C56C0DA730786DAD9414028BEEC504B7F56C08CE7E1C6AAC441408C8E56146D8956C048214F67DFB341409C3C9EF5A68856C0E22A268B938E4140DE5EC017F68F56C04EFE2CC5A482414002E4AB29289156C0249B639582784140FB760B96919C56C0F0C3BFA4F96E41405806CE8BCE9C56C0D2F6F2D76B5C4140F57D45C365A556C094E87EFD243A4140CAFF935EC8AC56C084F98F8EE2324140E8514C3D19B856C0F017157A80214140AD5FC097D7BE56C0E0E04410060741402EA4041CD7CC56C04A76417363DA40404A524C7D4CCE56C08EA5D76F0ABC4040F61E198AEEC656C00819B2B0739A4040AEC9C3B4FDC956C04860932B4581404090F21FC46AC556C01E89EFBAF7794040583A01BF3DCB56C01E410E407E674040D6477559FCC156C0BC511F51224D4040FA92F3CA98C456C00414157A4C3D404050A7A1525BBC56C01C8B8C714127404014DE713C39C556C0A480B5CD321A40407396908134C856C0FC75DEA9FA0140406C8CB99D92D456C04C88F3230FDC3F4044E5ABA954DA56C0146C0B6F63A63F405071D16823E056C048AF4FB39B683F40D29DCA6EFAE756C068E51F1D054C3F409707CE4B5CE556C0B44A86831F0C3F40846A97FBD9E156C050F4302EF0CE3E40863A017FC8D556C0489EDBD898A53E40348CB95DCCC756C0400D19E31D453E40BA36648872BF56C09C983EA23E223E40F0736E1F23B256C01C761C808A0D3E40E0CB60EBEF8256C0AC1C2AF44DE53D405CC8C3F4F87C56C05090043524CD3D40944675D9CF7856C0AC66A8A5CFA53D40619BCAEED85956C0C80BB6193F283D40');
INSERT INTO "rivers" ("scalerank","featurecla","name","name_alt",geom) VALUES ('1','River','Yangtze',NULL,'0105000020E610000001000000010200000002000000A6D25B50A50C5D40B08C67FE5AC03D408C4D70FE8E0D5D40D0EF302E00C93D40');
CREATE INDEX ON "rivers" USING GIST ("geom");
COMMIT;
ANALYZE "rivers";