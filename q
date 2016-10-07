[33mcommit 1e320d5a187be4f1b56a5b2fbdf574f1f3dd6982[m
Merge: d7ef160 29ec71f
Author: Pascal Sigel <psigelo@users.noreply.github.com>
Date:   Fri Oct 7 16:00:37 2016 -0300

    Merge pull request #2 from lcasassa/master
    
    Neat v2 and exporting library to Python with Swig

[33mcommit 29ec71f5ed1051f0ca4fb19a3e403cc38b596df9[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 14:23:54 2016 -0300

    Exporting to python with swig.

[33mcommit fda7c2c27979903d80901478471b983cfbe02669[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 14:08:37 2016 -0300

    Removing undefined function.
    Removing static linking as we are linking with every .o

[33mcommit 70e09d7dd3f86452e488618ca0dc5bf8022a5183[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 13:07:14 2016 -0300

    Adding new line at the end of the Makefile and NEATSpikes.

[33mcommit 21a5620981d6b72fb0c4e00cc12144410cd3f595[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 13:05:04 2016 -0300

    Removing directories as the include directory installed does not use them.
    Replacing unique_ptr to shared_ptr so python can manage the pointer.
    File include/PlatformDefinitions.hpp does not exist, removing it from NEATSpikes.

[33mcommit bc0c2c82796544539fe92dd9b57da1fe9a9a109e[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 11:03:21 2016 -0300

    Removing cython. We will use swig.

[33mcommit bd472d91cac4fbb4fb73a5230903b92de6858bbc[m
Merge: 039947b 6f6664c
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 10:41:54 2016 -0300

    Merge remote-tracking branch 'psigelo/NEATSpikes/master' into mjescobar/NEAT

[33mcommit 039947b1902760ffc75b61aabe775e3ff6299d36[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 10:36:38 2016 -0300

    Removing all neat 1.0

[33mcommit 8630e3ddac78a8214412b6d819b33a335897d2d3[m
Author: Linus Casassa <lcasassa@gmail.com>
Date:   Thu Oct 6 10:33:27 2016 -0300

    Adding fitness function.

[33mcommit 6f6664ca2a72b21d032c3acf4eb69761d8796970[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Thu Oct 6 07:02:43 2016 -0300

    Comenzando la documentacion

[33mcommit 2b65a712221a492f8da4db3464f0d235db55ff72[m
Author: Linus Casassa <linus.casassa@innovaxxion.com>
Date:   Wed Oct 5 13:30:32 2016 -0300

    Using different variable names on the two for loops.

[33mcommit 586e75c47b9cdf9e64a66a724b47ccf3513a4fd3[m
Author: Linus Casassa <linus.casassa@innovaxxion.com>
Date:   Wed Oct 5 13:23:23 2016 -0300

    Python version of neat.

[33mcommit a2d8989751770ee68eddc169a61417e3fe901b86[m
Author: Linus Casassa <linus.casassa@innovaxxion.com>
Date:   Wed Oct 5 13:24:46 2016 -0300

    Removing unnecessary ifdefs.

[33mcommit eccb8cc4c91a37236444b7de18670ed450c5ade8[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Wed Oct 5 02:44:13 2016 -0300

    Comenzando documentacion

[33mcommit 24cc7cb7d6443bfea30cdee167406096883d68a4[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Mon Oct 3 17:37:45 2016 -0300

    LIF actualizada

[33mcommit d7ef1608baf868f7402c9bdbd82a1117a9d0dcf1[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Thu Sep 29 15:32:15 2016 -0300

    volviendo

[33mcommit 173b1bc739f7560eb0171b53731e17127a7eee40[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Thu Sep 29 15:28:01 2016 -0300

    volviendo

[33mcommit 25f0cbee0e4955a0ed9d767d843c1e0c5ea84702[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Fri Sep 2 13:13:59 2016 -0300

    Probando experimento XOR

[33mcommit eee8dc2aa421b9b9b90f7c3d4c72e30e980aa952[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Thu Aug 25 13:17:36 2016 -0300

    Realizando tests en race

[33mcommit fc58c7cb5e471804b46cf528c4a8a71776c6c811[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Mon Aug 22 12:32:33 2016 -0300

    Algoritmo terminado, falta realizar pruebas para chequear errores.

[33mcommit 6b2b42cc476674d8dd4d01ba3e27657acb581f80[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Wed Aug 10 15:20:08 2016 -0300

    ANN is added and all test were tested

[33mcommit 9986a9d0c74871f5b1dd1a321d2fe886bbf3c6a7[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Mon Aug 1 04:30:33 2016 -0300

    Se ha agregado a la clase BasicSynapticWeight y los test de BasicNeuron ya han sido agregados y probados

[33mcommit 81a0cd82206a8538aa7f7fd86a7d1aa5de7083c9[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Sat Jul 30 21:21:34 2016 -0300

    Se ha repensado NEAT Spikes y se desarrollaron parcialmente las clases Neuron, BasicNeuron, BasicNeuronUserDefinitions y Parameter

[33mcommit e1670018d8ee38d37402964e97b9b5f1c17f433f[m
Author: psigelo <pascal.sigel@gmail.com>
Date:   Thu Jul 30 21:18:29 2015 -0300

    --

[33mcommit a839434a4e1f2523d42ebfef8175ff4374d7d8fd[m
Author: psigelo <pascal.sigel@gmail.com>
Date:   Thu Jul 9 07:52:41 2015 -0300

    funcion identidad fue saturada en 1

[33mcommit 6f6218e17fc2df8f5a4c488b7530e3650d0c5005[m
Author: psigelo <pascal.sigel@gmail.com>
Date:   Sun May 31 17:38:22 2015 -0300

    ahora si pequeños cambios

[33mcommit b6068774f2cd633bafa5ea330d26d986f959f083[m
Author: psigelo <pascal.sigel@gmail.com>
Date:   Sun May 31 17:36:43 2015 -0300

    cambios pequeñs

[33mcommit e0315daac609da07ea522864b7cbd2c09d57f769[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Tue Dec 2 12:50:26 2014 -0300

    Manual de usuario agregado

[33mcommit a06a28b7c038bbb94af7405660bd0868d01a597e[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Tue Dec 2 12:33:14 2014 -0300

    GUI agregada

[33mcommit 130b685f51357d63ccdd5afa632657a53e2ede05[m
Author: Pascal Sigel <pascal.sigel@gmail.com>
Date:   Tue Dec 2 11:49:03 2014 -0300

    NEAT v2
