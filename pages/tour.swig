<!DOCTYPE html>

<html>
  <head>
    <title>Experience the Tour &mdash; Europe Grand Tour</title>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    <script src="scripts/jquery.js"></script>
    <script src="scripts/main.js"></script>
    <script src="scripts/fastclick.js"></script>
    <script src="scripts/bubbles.js"></script>
  </head>

  <body id="tour">

    <!-- Image Preloading -->
    <div style="display: none">
      <img src="/images/tour_photos/piazza_novena.jpg"/>
      <img src="/images/tour_photos/sorrento.jpg"/>
      <img src="/images/tour_photos/florence.jpg"/>
      <img src="/images/tour_photos/venice.jpg"/>
      <img src="/images/tour_photos/mutters.jpg"/>
      <img src="/images/tour_photos/paris.jpg"/>
    </div>

    <div id="tour">

      <div id="header"></div>

      <div id="sidebar">
        <a href="/"><img src="images/white_logo.png" alt="EGT Logo"/></a>

        {% include '_common/navigation.swig' %}
      </div>

      <a id="prev"></a>


<!--
      <section id="rome" data-background="piazza_novena.jpg">
        <header>
          <h1>Rome, Italy</h1>
          <p>Experience the Eternal City up close as we travel back in time and explore the modern city, the ancient forum, and ruins that make up beautiful Roma.
          </p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/rome/10372083_10201227877937959_6655559605493898503_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/10417740_815176411826804_6453376318766614112_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/10425428_10202492072558865_4017327739719409079_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/10544999_659377074155012_2088563089_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/1525017_10203530362413730_7386925779407977572_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/246575_3890780361327_285607912_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/Atrium Of Vestals Virgins.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/Marcus Aurelius .jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/Pantheon.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/img_001.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/img_002.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/img_003.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/img_004.jpg" alt=""/>
          <img src="/images/tour_photos/student/rome/img_005.jpg" alt=""/>
        </div>
      </section>

      <section id="sorrento" data-background="sorrento.jpg">
        <header>
          <h1>Sorrento, Italy</h1>
          <p>Following a trip to the ancient city of Pompeii, frozen in time by the eruption of Mt. Vesuvius, have the time of your life traveling downtown Sorrento and the Bay of Naples.</p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/sorrento/10455304_648300555262664_475936389325184953_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/10475223_816292535048525_2725996730199680271_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/10475981_10201257832486804_6774608399976807371_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/10476391_648424338583619_726820053_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/10492504_816292498381862_4706722855999355424_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/1908020_10201243443007076_3911631691659397565_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/sorrento/1958325_10153078989480200_7506651359022950590_n.jpg" alt=""/>
        </div>
      </section>

      <section id="florence" data-background="florence.jpg">
        <header>
          <h1>Florence, Italy</h1>
          <p>Gaze in astonishment upon massive cathedrals and palazzos. View the Medici art collection. Smell the aroma of real Florentine leather. Try not to get lost in amazement.</p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/florence/10450016_869495246398075_8038126068627986884_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/10492218_10203578168647689_7101110872929592245_n-2.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/10511687_826827207328391_3132192645982565110_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/10530871_10202609776941401_53319097243483157_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/img_001.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/img_002.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/img_003.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/img_004.jpg" alt=""/>
          <img src="/images/tour_photos/student/florence/img_005.jpg" alt=""/>
        </div>
      </section>

      <section id="venice" data-background="venice.jpg">
        <header>
          <h1>Venice, Italy</h1>
          <p>The city built on water. Venice's beauty can be witnessed from any angle: whether it be walking down one of the skinny alleyways on its labyrinthine map or catching sun on the Grand Boulevard.</p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/venice/10487423_10203576466806311_7126179650379711744_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/venice/img_001.jpg" alt=""/>
          <img src="/images/tour_photos/student/venice/img_002.jpg" alt=""/>
          <img src="/images/tour_photos/student/venice/img_003.jpg" alt=""/>
          <img src="/images/tour_photos/student/venice/img_004.jpg" alt=""/>
          <img src="/images/tour_photos/student/venice/img_005.jpg" alt=""/>
        </div>
      </section>

      <section id="mutters" data-background="mutters.jpg">
        <header>
          <h1>Mutters, Austria</h1>
          <p>Pick from a variety of extreme sports and activities: seeing a glacier, taking a long hike up the alps (or paragliding down them), and more! Relax, and enjoy the view. You won't want to miss it.</p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/mutters/10344169_10201297193110795_2922852894531758213_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/Mutters, Rafters 1 '08 copy.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/Mutters, Skiers 2 '08 copy.JPG" alt=""/>
          <img src="/images/tour_photos/student/mutters/Mutters, Street 4 '09 copy.JPG" alt=""/>
          <img src="/images/tour_photos/student/mutters/Mutters, Street 5 '09 copy.JPG" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_001.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_002.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_003.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_004.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_005.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_006.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_007.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_008.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_009.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_010.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_011.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_012.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_013.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_014.jpg" alt=""/>
          <img src="/images/tour_photos/student/mutters/img_015.jpg" alt=""/>
        </div>
      </section>

      <section id="paris" data-background="paris.jpg">
        <header>
          <h1>Paris, France</h1>
          <p>Ride to the top of the Eiffel Tower. Experience the spirituality of the Notre Dame Cathedral. Hit up the city streets and see the way Parisians live. What's not to love?</p>
        </header>

        <div class="slideshow">
          <img src="/images/tour_photos/student/paris/10427215_823783124299466_589478261091873962_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/10446246_10201327042137002_753857193808752079_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/10488403_10202609810822248_2776257335715094112_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/10498267_826826957328416_8556410547151509614_o.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/10505535_823244907686621_1235139827094030675_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/205518_1017234484008_8566_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/269923_239304002765886_3975798_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/34985_1238687307706_7134986_n.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/Paris.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_001.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_002.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_003.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_004.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_005.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_006.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_007.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_008.jpg" alt=""/>
          <img src="/images/tour_photos/student/paris/img_009.jpg" alt=""/>
        </div>
      </section> -->

      <a id="next"></a>

      <div id="bubblewrap">
        <ul class="bubbles">
          <li class="active">
            <a data-city="rome">
              <em>benvenuti in</em>
              Rome</a>
          </li>
          <li>
            <a data-city="sorrento">
              <em>esplorrare</em>
              Sorrento</a>
          </li>
          <li>
            <a data-city="florence">
              <em>innamorarsi di</em>
              Florence</a>
          </li>
          <li>
            <a data-city="venice">
              <em>rilassarsi a</em>
              Venice</a>
          </li>
          <li>
            <a data-city="mutters">
              <em>wilkommen in</em>
              Mutters</a>
          </li>
          <li>
            <a data-city="paris">
              <em>bonjour,</em>
              Paris</a>
          </li>
          <div style="clear: both"></div>
        </ul>
        <div style="clear: both"></div>
      </div>

    </div>

    <script src="http://www.parsecdn.com/js/parse-1.6.12.min.js"></script>
    <script src="/scripts/galleria/galleria-1.2.9.min.js"></script>
    <script src="/scripts/tour_galleries.js"></script>

  </body>
</html>
