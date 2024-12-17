-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2024 a las 19:11:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appseguimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abmm3u8`
--

CREATE TABLE `abmm3u8` (
  `id2` int(11) NOT NULL,
  `dato1` varchar(255) NOT NULL,
  `dato2` varchar(255) NOT NULL,
  `dato3` varchar(255) NOT NULL,
  `dato4` varchar(3000) NOT NULL,
  `dato5` varchar(3000) NOT NULL,
  `dato6` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `abmm3u8`
--

INSERT INTO `abmm3u8` (`id2`, `dato1`, `dato2`, `dato3`, `dato4`, `dato5`, `dato6`) VALUES
(1, 'M3u8', 'TV', 'Canal 13', 'https://live-01-02-eltrece.vodgc.net/eltrecetv/index.m3u8?PlaylistM3UC', 'https://pbs.twimg.com/profile_images/1344843564535132160/xT96d8Zv_400x400.jpg', 'https://live-01-02-eltrece.vodgc.net/eltrecetv/index.m3u8?PlaylistM3UC'),
(2, 'M3u8', 'TV', 'Telefé', 'https://ssl.cloud.telefe.com/Api/Videos/GetSourceUrl/694564/0/HLS', 'https://pbs.twimg.com/profile_images/1674403889330769920/HvMDFzMg_400x400.jpg', 'https://ssl.cloud.telefe.com/Api/Videos/GetSourceUrl/694564/0/HLS'),
(3, 'M3u8', 'TV', 'Canal 9', 'https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CqQGc9BSXCkIsYcQmgOZTDDXwSyjtT6TA2Bqfjdajell8AuFHRum8biHxOzkjgeq2mObZ3XSASsYS4dFhd7sq6NkCoD8IFK_hp2zKu-qWds7e8nftOjd-zPPo6xxcidZe651a2ixLOH2Z6hPs2JMl5h5Ftj_ldiTohb9BS8_tB7xHS4s0I5WmVDJ4Hbx2eP4JEUK5zNycoEj-IcWxG3mr09TGqzKHlyaX4zRSHfbmvpzXm2lQK8T3G3L8cHttAM-gYpEQpSzp5fvmUrK6lXFRzKII_sfVx2tRbC55TuSe3hdQ8ZFw1mLwOvtb7VRX_j26uqaCxevmOu9cqpQ3SoKR2eAg0x0T3r0rxq7_ftli624LAZX7E8r791_Xx4OMHinzqh0dSjf00mx2Tgq88_fqRO2O5biCE36Jo1JVTiWLQHUSYBGiPNTBwCtNOBJnabhcHdf_t3axe8CcLHF5xPEY3rxkHlXwKFfN8nhpf-XYfqRb0P9i-z_VKH8BtgHi7x4-YUTdiMMb3YchihVKS-B4RmWeexeI4Kf4YTunTbW6E2E9hRFdwXGNa5WwbmepdEig3npMQwin6mNpxW_MPUqVJU6RnAsAUCWNRbrklcJk0AfdoeCi7EzNeY_L1ohKgtfn_xzKl7i-4JGPlSv3UUUOWoCUw2X-aB6skzdWg5ZUao1LTpYA1xlMsIvlQDrNziSkzPW_3vLF1-M1YzdFHDDFU26VR5EWInXJ1c_8svr41X4rg9n_BJsB1lIj5D1soAl95zN0aWnbQvZond5BqwL66gBMIKel-50rZnhK64XAsckPOI_ihzIV8Wyp47banRr9tzuC8_frQcETpiQhGCoxwrmfsSb0xZJXZ403qyuBaZAG_x3YWEOIEJr4WLo7YpHUuCoWTn7mSe9u5dcuhUl9eWNo51k1FIUPZnRhkI3GQq4ljal1jh9qWTeqJtMThjoIKjTJ5A2vu_gdAx7m-ZYNvsZweqAeLLkjumCISD6zMC3pTetD-gSVgbPv81qK3_X_l64ri-ozzFE9wY6tl2hQTudO39bfJY1ktUTfjqYjWNgKMdbOAGhGgxqWEXmmP9GvmOqKpcgASoJdXMtZWFzdC0xMMQJ.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Canal_9_2015.png/180px-Canal_9_2015.png', 'https://www.twitch.tv/elnueve_ok'),
(4, 'M3u8', 'TV', 'América TV', 'https://vmf.edge-apps.net/embed/live.php?streamname=americahls-100056&autoplay=false', 'https://i.imgur.com/qeC0Fk0.png', 'https://www.americatv.com.ar/vivo'),
(5, 'M3u8', 'TV', 'Net TV', 'https://unlimited1-buenosaires.dps.live/nettv/nettv.smil/nettv/livestream1/chunks.m3u8', 'https://pbs.twimg.com/profile_images/1075497247129911296/_RyuQ8I4_400x400.jpg', 'https://unlimited1-buenosaires.dps.live/nettv/nettv.smil/nettv/livestream1/chunks.m3u8'),
(6, 'M3u8', 'TV', 'A24', 'https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CrEGMPnn0xXBU6gmxOCYa6t6evqNXrC_nzswST_mbj4IzX3KBY3Rd-9hnJA4ALIDlNtDp3RQRk196YCJ7RuPnHllXVC5DDgXtEMaTJdLz9UsHobzIfYefvC7FXvagqndoFg_v4p3GS2jIlJ6vNPbBNw6t8BhMFTAyo7RzeUOOwqNnAhMn6oZyWKc9WVyX6zUcEtE7cx-Javhc9MVKojanxBYrDty3u1x243kipZTWRfxO2CTZEkwC-e31jhyXv5a2DwTYd6PNLPY09lXJhxUhzwcWqde25GIJUxj5JcjLLjCbfDeOToz0-E8ph-cWxZQFCFpdrUC4BvWxEeF72ja8rogWEuT7p-wGT5RBI6F2jYQQ4aTfNs_wP3iFpSayqjaCEEldpDyXc1rjwQ1aDuXndsT_xklrVRgN1buaW4gkkKDUemTvQZIVNvqVdyCDvBVJNw5z77eYlwsN5Jet_Ooe9-B-MwtHkVS6lUq7VNtG0NmajuNw8qaYpyvDIfK1gBD_Ko7dS2XGAcEi3em340DByDLhRbvHoZpehzu1iV5VU6uHZut6BFNhSNby883ALtKbA7563sWazMjgpUqWCGtJBJKv_Se2uTp_9Euoe45rHSDOSe_2XIWk_r0v-8LxvMaIVfI_4FcpHxhYF67cnzBVRMdEWypBVJ1AjZOQRcqreq4bFpX_fQ46Ot2AsIa6rx6i2uppM3acODIpoP2jWNBo6YA6e3o80LeLIsEleM-kawvr3jj-AEj12BMg1_q5P0PGvcWnrroI5UiTUsKSuC8Rx0_3AkAC8VvgFuKtUszoXbWasWSaT2725uInNk8vLg_Dak-isvRx4Ibq3kANu-3iqJugaEwWQ5Y6BbP3quAT0WbRV8mVFjn7_PIxbbXnI75XsKL3fztFMqGVlZ6tYFL1TjAB7rPiclYyaJGuvDqe3iYLrseb1xDVTsON66zHxKZgvoxG22BzN-go8ZudZR_vIgpKDWmOZ1azu4_W86wWu6I7bQNWhzS2gJReBRPrxea-GBjZJ3qdk8bw0yrIlDwkGfkWpMR4iuMNvcU6fzih8F_CLJjd7nABGOt139wcW1od_CglRoMx4LsCaw2ops5Zc1DIAEqCXVzLWVhc3QtMTDECQ.m3u8\" youtube-dl --no-part --restrict-filenames \"https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CrEGMPnn0xXBU6gmxOCYa6t6evqNXrC_nzswST_mbj4IzX3KBY3Rd-9hnJA4ALIDlNtDp3RQRk196YCJ7RuPnHllXVC5DDgXtEMaTJdLz9UsHobzIfYefvC7FXvagqndoFg_v4p3GS2jIlJ6vNPbBNw6t8BhMFTAyo7RzeUOOwqNnAhMn6oZyWKc9WVyX6zUcEtE7cx-Javhc9MVKojanxBYrDty3u1x243kipZTWRfxO2CTZEkwC-e31jhyXv5a2DwTYd6PNLPY09lXJhxUhzwcWqde25GIJUxj5JcjLLjCbfDeOToz0-E8ph-cWxZQFCFpdrUC4BvWxEeF72ja8rogWEuT7p-wGT5RBI6F2jYQQ4aTfNs_wP3iFpSayqjaCEEldpDyXc1rjwQ1aDuXndsT_xklrVRgN1buaW4gkkKDUemTvQZIVNvqVdyCDvBVJNw5z77eYlwsN5Jet_Ooe9-B-MwtHkVS6lUq7VNtG0NmajuNw8qaYpyvDIfK1gBD_Ko7dS2XGAcEi3em340DByDLhRbvHoZpehzu1iV5VU6uHZut6BFNhSNby883ALtKbA7563sWazMjgpUqWCGtJBJKv_Se2uTp_9Euoe45rHSDOSe_2XIWk_r0v-8LxvMaIVfI_4FcpHxhYF67cnzBVRMdEWypBVJ1AjZOQRcqreq4bFpX_fQ46Ot2AsIa6rx6i2uppM3acODIpoP2jWNBo6YA6e3o80LeLIsEleM-kawvr3jj-AEj12BMg1_q5P0PGvcWnrroI5UiTUsKSuC8Rx0_3AkAC8VvgFuKtUszoXbWasWSaT2725uInNk8vLg_Dak-isvRx4Ibq3kANu-3iqJugaEwWQ5Y6BbP3quAT0WbRV8mVFjn7_PIxbbXnI75XsKL3fztFMqGVlZ6tYFL1TjAB7rPiclYyaJGuvDqe3iYLrseb1xDVTsON66zHxKZgvoxG22BzN-go8ZudZR_vIgpKDWmOZ1azu4_W86wWu6I7bQNWhzS2gJReBRPrxea-GBjZJ3qdk8bw0yrIlDwkGfkWpMR4iuMNvcU6fzih8F_CLJjd7nABGOt139wcW1od_CglRoMx4LsCaw2ops5Zc1DIAEqCXVzLWVhc3QtMTDECQ.m3u8', 'https://static-cdn.jtvnw.net/jtv_user_pictures/21590594-e70d-4976-bd68-f1dd17e6fffb-profile_image-70x70.png', 'https://www.twitch.tv/a24noticias'),
(7, 'M3u8', 'TV', 'IP Noticias', 'https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CqQGTrtNA-GI2WRaDtiouK19uv0dEkmE0ZPgF6ghStvaZI481ZPD2KO9A12NBPa3w6JVyAw87X5MvbWfw0iUIbVplmjIW7vMrSQVHzixeTJtkVS4n8DxG1JLQWhpx7CjWiHcy7liFMlt4yWmKZvxM5dvPXltjPG3clBYW4V3tI-cEYLQjB-XfSIkc_Po0dFA9mNH_2ayJqznIOAL34P6luUCcRD1F4zZX2FQzf95vHQG1qff1dvmh9FVJPasuZE_3X7BMYilAfiKRUW3Ye64ClWLScQfbVuucng8ODR0_auCGCOkcENqUIGZ2iVMWwBhVGwdqiSg1vgFZCckzrJotxLoukpoSD7_pv6Bf69xiTLMuyWhvcOjOAP7oNcDaIAHeImqH7hdzq5qmIQgKN5MKJXgnEAsY5XHIDQbNqr3s3cpSNerzVtGPkScMbgHZC6kiff4BqMzzM6LbYZ9hg0sS7ZzEgMep7pkVQTVeG81OmsI_Y4vwAVuZ6U-EoOfIthcYVGVkI7TxN0dOc1fwpKXXNC_qgt_gX_XVNVXBtgjGBh5H5fLMP85m9KNNbMculzRfSjzgVH94Ecmkmz8jFH61RB_z7fHn1Wsd6iDMP2evg2FSgyVafo0RVTCwgT8_iyY8ifM1BVPzA-3WejOvaBkPCQtIy5iJ9SvJs27iekMN6FALBxL996aKjWIvito_vNAv06LOmcChtmhmzd-6TlypmTpKWfgF2XKENzk_mMmW719Fpbgifh8EuSYa_6I7acRWMRrJa35Yb0mERuO8235-LbxdNtA-4ond9Th7QE0I65ufPIKccni2b4OcgVrTOUwdoA93sXaX-IZT6fNuxMwh_9kmF1tNx2M23EZFCeJnXTmQ1bNp-iox0gDl5EcvgvIJDXlicZqqLd-HAyghBMkIILvyof8FQJXY9VMyw_wrdEs65iS6MLA7aihKKpI4xBIMfGvyFxLK4wOwSoObAAN3GCJjMZ5OkxYD599KMlL6QytiBhV3qCIuJ9UjW_M_TRhUz8T0ooSO68MmFWMyEh4zmQVkUFnPYaaPSScoNGT6V44cR-7ui--GgxYz6rkdORXV87PH50gASoJdXMtZWFzdC0xMMQJ.m3u8', 'https://static-cdn.jtvnw.net/jtv_user_pictures/fa424246-3ef2-465a-ab9b-58d7d5c0a9bc-profile_image-70x70.png', 'https://www.twitch.tv/ip_noticias'),
(8, 'M3u8', 'TV', 'DNews', 'https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CoAGxRTgR8FjL4yyQKFteEM1XXn8XgjJj1nMGmrzfpuRzgefv6Qzj8gsaU_keMRf4kJCfbnHDzBKjE9lsk75anmv3gGgh7sF9Mpy0YbQr8t71uljYNpFDmufBQdOqgxPxixZIW4ZNu3d6Fe7DCXTpf6ksaccsxAsr8T0w4ixtiBCkcOovokNi3DLydwMfinWznqms16oLKtA18nyEN-pDqJuNFt7qPfB8MvaxqWeQBzVElfTKyX7TtbHNwdMUCwgNkNildB1wgVCxZbaeeSnzOm7iP7FB9shfoMU8kg4Fn9_MwJywfYCbWSI0GUuKI6MwpNwWpu-VjfqauW4vJmbSyrXtObsO5Xg2QVmCWMc6bCiViTgd9CWHpY4M0Ixtzn15c8F2n_mTYOmh8RE6wte_vnipy4GurfCEun7WiX7VRjdgLhYOCKWhkPJXJNu0zX9PnTz6tNovh-5HNNbAUszMv0fCKb0vQn9OddLk70KQEDYwKAlIDinHkWXhScqxx69tyDOvUBN144j60OwDWXFYFstsOaTtZd5z-9_D1GMwgiT_ZpsdKQwx6TBdB-wTESgMrZpctzCuCyPvcb6VkcZYrtraQrs4GoF_mvgqsq_kg1l0Ft3lBttr7Q0YTBbKrdOmEYbwxHaKuJys0rASF8ajN3Ui7OKj6hNoFL89XvzCvVlvgulRfAz4v5mdhijFgR5r7IBcyv-trNpjo1mcll6SoXdEZl-3dNNm5rpRvXtpGT6nMB17WzHJXRfdEKhkfCPDqqhZPOVzTNxsGWgv8r4-rQ4yHYfjsaJbQE-qoFZWci19QvjkpAv8v2iWSg2zvOjrkXJhxm-aBguWH3p5PDh86N4q8DiiZQx_WFVyekSWbE9bkfY-FQwe5gbBM3moSsogmmmFEyi1sG6euBmRNQ5AbnfOu4NxWAR79kpkEMNhgG-Nw5nCUTGbyLVhWgPkis7-HFZAHWS-st1Rty7NqcEJLRko1okiebyO2J-sautmQ0ePztOJ4gwxZwY1TWW6wDYYxqQGgzYkWjJaKwlTxS8lUogASoJdXMtZWFzdC0xMMQJ.m3u8', 'https://static-cdn.jtvnw.net/jtv_user_pictures/ac8b263a-c36a-44c1-800e-4d181645f980-profile_image-70x70.png', 'https://www.twitch.tv/dnewsok/'),
(9, 'M3u8', 'TV', 'Canal E', 'https://unlimited1-buenosaires.dps.live/perfiltv/perfiltv.smil/perfiltv/livestream2/chunks.m3u8', 'https://www.perfil.com/img/minisitios/econocanal/logo.png', 'https://unlimited1-buenosaires.dps.live/perfiltv/perfiltv.smil/perfiltv/livestream2/chunks.m3u8'),
(10, 'M3u8', 'TV', 'El Garage TV', 'https://stream1.sersat.com/hls/garagetv.m3u8', 'https://cdn.mitvstatic.com/channels/ar_el-garage_m.png', 'https://stream1.sersat.com/hls/garagetv.m3u8'),
(11, 'M3u8', 'TV', 'Telemax', 'https://stream-gtlc.telecentro.net.ar/hls/telemaxhls/0/playlist.m3u8', 'https://yt3.googleusercontent.com/ytc/AIdro_lggFXZCW8tAgQGnU0E1dbzuoF7niPURuL31ejieqm9OQ=s160-c-k-c0x00ffffff-no-rj', 'https://stream-gtlc.telecentro.net.ar/hls/telemaxhls/0/playlist.m3u8'),
(12, 'M3u8', 'TV', 'Latina', 'https://stream-gtlc.telecentro.net.ar/hls/latinatvhls/0/playlist.m3u8', 'https://static-media.streema.com/media/object-images/25f4db6a-4008-4ee2-8875-3abedc77b78d.jpg', 'https://stream-gtlc.telecentro.net.ar/hls/latinatvhls/0/playlist.m3u8'),
(13, 'M3u8', 'TV', 'Music TOP', 'https://stream-gtlc.telecentro.net.ar/hls/musictophls/0/playlist.m3u8', 'https://cdn.mitvstatic.com/channels/ar_musictop_m.png', 'https://stream-gtlc.telecentro.net.ar/hls/musictophls/0/playlist.m3u8'),
(14, 'M3u8', 'TV', 'El País TV', 'https://d2xqbi89ghm9hh.cloudfront.net/v1/master/3722c60a815c199d9c0ef36c5b73da68a62b09d1/cc-79fx3huimw4xc-ssai-prd/fast-channel-el-pais.m3u8', 'https://yt3.googleusercontent.com/ItWxuR5r9Yb8388Dz2PKmlj2jVMV4Mn-m2uoW8oYtT6aJCWFdyryAA1vevJTU3qd0m5q0zA_4Bg=s160-c-k-c0x00ffffff-no-rj', 'https://d2xqbi89ghm9hh.cloudfront.net/v1/master/3722c60a815c199d9c0ef36c5b73da68a62b09d1/cc-79fx3huimw4xc-ssai-prd/fast-channel-el-pais.m3u8'),
(15, 'M3u8', 'TV', 'Canal de las Estrellas', 'https://channel01-onlymex.akamaized.net/hls/live/2022749/event01/index.m3u8', 'https://cdn.mitvstatic.com/channels/las-estrellas-m.png', 'https://channel01-onlymex.akamaized.net/hls/live/2022749/event01/index.m3u8'),
(16, 'M3u8', 'TV', 'TV Azteca', 'https://azt-mun.otteravision.com/azt/mun/mun.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Logotipo_de_TV_Azteca.svg/200px-Logotipo_de_TV_Azteca.svg.png', 'https://azt-mun.otteravision.com/azt/mun/mun.m3u8'),
(17, 'M3u8', 'TV', 'Telemundo', 'https://nbculocallive.akamaized.net/hls/live/2037499/puertorico/stream1/master.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Telemundo_logo_2018.svg/150px-Telemundo_logo_2018.svg.png', 'https://nbculocallive.akamaized.net/hls/live/2037499/puertorico/stream1/master.m3u8'),
(18, 'M3u8', 'TV', 'RCN Xtra Colombia', 'https://latv-rcn-xtra-1-mx.tcl.wurl.tv/playlist.m3u8?PlaylistM3UCL', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Rcn-xtra_2.png/800px-Rcn-xtra_2.png', 'https://latv-rcn-xtra-1-mx.tcl.wurl.tv/playlist.m3u8?PlaylistM3UCL'),
(19, 'M3u8', 'TV', 'RCN Más Colombia', 'https://rcntv-rcnmas-1-us.plex.wurl.tv/playlist.m3u8', 'https://yt3.googleusercontent.com/RQRMTiQ4yZnkGRM5S_rmV2JZ_LAOTAE5BOHo-g1mY2VZmsX17JoesHCstC-mrvLY3MvIwWyt9w=s160-c-k-c0x00ffffff-no-rj', 'https://rcntv-rcnmas-1-us.plex.wurl.tv/playlist.m3u8'),
(20, 'M3u8', 'TV', 'TVE', 'https://rtvelivestream.akamaized.net/rtvesec/int/tvei_ame_main.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/TVE.svg/220px-TVE.svg.png', 'https://rtvelivestream.akamaized.net/rtvesec/int/tvei_ame_main.m3u8'),
(21, 'M3u8', 'TV', 'TVE Star', 'https://rtvelivestream.akamaized.net/rtvesec/int/star_main.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/0/08/Star-TVE-logo.png', 'https://rtvelivestream.akamaized.net/rtvesec/int/star_main.m3u8'),
(22, 'M3u8', 'TV', 'SBT Brasil', 'https://cdn.jmvstream.com/w/LVW-10801/LVW10801_Xvg4R0u57n/playlist.m3u8', 'https://brazil.mom-gmr.org/uploads/_processed_/6/d/csm_7012-1071_import_f5e387bc54.png', 'https://cdn.jmvstream.com/w/LVW-10801/LVW10801_Xvg4R0u57n/playlist.m3u8'),
(23, 'M3u8', 'TV', 'PlutoTV - Novelas', 'http://stitcher-ipv4.pluto.tv/v1/stitch/embed/hls/channel/5dcde0cc2efd2700090b7ff4/master.m3u8?deviceType=samsung-tvplus&deviceMake=samsung&deviceModel=samsung&deviceVersion=unknown&appVersion=unknown&deviceLat=0&deviceLon=0&deviceDNT=%7BTARGETOPT%7D&deviceId=%7BPSID%7D&advertisingId=%7BPSID%7D&us_privacy=1YNY&samsung_app_domain=%7BAPP_DOMAIN%7D&samsung_app_name=%7BAPP_NAME%7D&profileLimit=&profileFloor=&embedPartner=samsung-tvplus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Pluto_TV_logo_2024.svg/320px-Pluto_TV_logo_2024.svg.png', 'https://pluto.tv/latam'),
(24, 'M3u8', 'TV', 'SeoTV - Novelas', 'https://seo.tv.bo/tv/SEO-TV-3.m3u8', 'https://imgur.com/tb1nPxJ.png', 'https://seo.tv.bo/tv/SEO-TV-3.m3u8'),
(25, 'M3u8', 'TV', 'Tierra Mía TV', 'https://stream-gtlc.telecentro.net.ar/hls/tierramiahls/0/playlist.m3u8', 'https://imgur.com/mKw7Gen.png', 'https://stream-gtlc.telecentro.net.ar/hls/tierramiahls/0/playlist.m3u8'),
(26, 'M3u8', 'Radios', 'Neura Media 89.7', 'https://video-weaver.bue01.hls.ttvnw.net/v1/playlist/CpgGruaGOydTDqT20MQailmHJ7drKjKIvOFglQA8rMucSQc412Elnrf6oEXjA9KcPD3ftCcQo9zoNhDOzuRRUK2nB_rJFo-8XLEpvjdf1PiH-9QYVaPc1HtQqu395L5PF6MxzMWthdu-iBWV-I2B_BsNRL5ZaEQPWeRG4NkzWGCTgRYDNwlR0nNeqwIci3SkaFxVflSgMUTFzhsxHRTppO-4bhofl_-sKkUMdEKaBgDUjiUEuGHG45k8c3qoqWqNXF65EYctUEj6QHGAWd3CZMzViqXEF-hrcQAfCdWmzJRa-zjAi8LS0thD7o7VHPdddUxUOqLGkQBf2vRF9tAmUSIxqDlwb1FvzQcVp6qFJ734MZ5JT-YKIyKsrZTeqYWpn-WEpMsaK9LWlS7B_FwlXVQwaAUbBGsuD0HOGjx05Ur28IUg5LtxaYydXUZea3YtTDppoGHesUlpf0V1Z5_O0x3smaKJ5l5N3qRRZyy0M9NseFswHvEtGUxl_DkyWDRdUygDULOU694bpGmTF-7covvTzkW-mRhmI9pcTrXE60BIPLDH4743jpGSb8jMqTKvV3GnIbB0VhVdyLq3dnSGdEEUh5mRui0jOpFdI6YIoKdYwiG0mL_i3HyeNE0ma6EnXJBZErfgYiBzL7r_jmsBpq0CT3nW_JJ72YyrPU9BJGCdxsC_aMZGt_XvSyahbTkPwJdvw-BrmL3vo9Iu1V9pNmIyyJshAfY9TThn0OB10izK0I9BM9kGwxQmGxhHwrnQ9yF32hvpvckxTpbXl2R3GawMzcYMIH1xl5by4-xfiQ5Lg4OrkVLVg1EgN7oCphsOjOOs10UijLx0B82tS-cntD-WrgO89BsfyG46eQOeBsnsgYH0MMsvXnPfiB4sqjzYUueIyF7oEUtmhsoWTUaY6z8hzQMBXjfcnFTzu8k1bpVdnU4Dwtojou9i6hiHqcZS7OfUB9PjoTI9bzYwezrLuNapDiHPyRfNPzaAaGWC9VPcrkhZddU-4GHN-8RQVvK-vSMc3Fr5KG8e0TmdoYb2sWH6r_9CrQfZOboMGgxgAw8G6K4mPExNIW4gASoJZXUtd2VzdC0yMNoK.m3u8', 'https://static-cdn.jtvnw.net/jtv_user_pictures/bc2ba1f0-fa3d-4742-ae71-ea6c5875e4c7-profile_image-70x70.png', 'https://www.twitch.tv/neuramedia'),
(27, 'M3u8', 'TV', 'Unife TV', 'https://cdn.mycloudstream.io/hls/live/broadcast/pgv5kerk/mono.m3u8', 'https://imgur.com/ggMmhCd.png', 'https://cdn.mycloudstream.io/hls/live/broadcast/pgv5kerk/mono.m3u8'),
(28, 'M3u8', 'Radios', 'FM +107.5', 'https://5f700d5b2c46f.streamlock.net/fm1047/fm1047/chunklist_w1452532750.m3u8', 'https://imgur.com/NixbzPa.png', 'https://5f700d5b2c46f.streamlock.net/fm1047/fm1047/chunklist_w1452532750.m3u8'),
(29, 'M3u8', 'Radios', 'Futurock', 'https://us-b4-p-e-zs14-audio.cdn.mdstrm.com/live-audio/5942a3a05fa68cca2efb4264/5d9d019112cbbb45d6a50960/chunks.m3u8', 'https://pbs.twimg.com/profile_images/1232667090248720387/hofB4jVm_400x400.jpg', 'https://us-b4-p-e-zs14-audio.cdn.mdstrm.com/live-audio/5942a3a05fa68cca2efb4264/5d9d019112cbbb45d6a50960/chunks.m3u8'),
(30, 'M3u8', 'TV', 'Canal 22', 'https://5f700d5b2c46f.streamlock.net/canal22/canal22/chunklist_w1483091552.m3u8', 'https://canal22web.com/wp-content/uploads/2024/05/LOGO-CANAL-REBORDE-BLANCO-1.2.png', 'https://5f700d5b2c46f.streamlock.net/canal22/canal22/chunklist_w1483091552.m3u8'),
(31, 'M3u8', 'Radios', 'Radio Con Vos', 'https://server1.stweb.tv/rcvos/live/playlist.m3u8', 'https://api.raddios.com/api/radios/12079/image/miniaturamovil?2024-05-02%2019:37:56', 'https://server1.stweb.tv/rcvos/live/playlist.m3u8'),
(32, 'M3u8', 'Radios', 'Radio JAI', 'https://vivo.solumedia.com:19360/jaitv/jaitv.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/2f/3a/2f3a53d7-8c70-4794-bebb-5a514587a221.png', 'https://vivo.solumedia.com:19360/jaitv/jaitv.m3u8'),
(33, 'M3u8', 'Radios', 'Radio Perfil', 'https://jireh-1-hls-audio-ar-isp.dps.live/hls-audio/4e252a65837b69e349d5d8c1033152b4/perfil/playlist/manifest/gotardisz/audio/now/livestream1.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/35/fc/35fc4cbd-900d-43de-a2af-d7603a657cc8.jpg', 'https://jireh-1-hls-audio-ar-isp.dps.live/hls-audio/4e252a65837b69e349d5d8c1033152b4/perfil/playlist/manifest/gotardisz/audio/now/livestream1.m3u8'),
(34, 'M3u8', 'Radios', 'FM Pasión 102.7', 'https://stream.arcast.com.ar/pasionparana/pasionparana.stream/chunklist_w558339017.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/48/ff/48ff0304-bc2b-4a53-ad9f-ee0d974c3392.png', 'https://stream.arcast.com.ar/pasionparana/pasionparana.stream/chunklist_w558339017.m3u8'),
(35, 'M3u8', 'Radios', 'One 103.7', 'https://one.stweb.tv/one/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/8d/ca/8dca129a-fe48-44e4-932f-c87d05de3eb6.jpg', 'https://one.stweb.tv/one/live/playlist.m3u8'),
(36, 'M3u8', 'Radios', 'Pop Radio', 'https://popradio.stweb.tv/popradio/live/chunks.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/29/cf/29cf86b4-16ca-4309-bd50-e084f0c0dc1b.jpg', 'https://popradio.stweb.tv/popradio/live/chunks.m3u8'),
(37, 'M3u8', 'Radios', 'Radio 10', 'https://radio10.stweb.tv/radio10/live/chunks.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/4a/57/4a57e7f4-c34e-4cc2-bd2c-b291bb105231.jpg', 'https://radio10.stweb.tv/radio10/live/chunks.m3u8'),
(38, 'M3u8', 'Radios', 'Urbana Play', 'https://vmf.edge-apps.net/playlist/urbana.m3u8/play.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/16/16/16168f46-4590-492e-9cd3-e13e75b345c7.jpg', 'https://vmf.edge-apps.net/playlist/urbana.m3u8/play.m3u8'),
(39, 'M3u8', 'Radios', 'Vale 97.5', 'https://vale.stweb.tv/vale/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/c9/2e/c92eb6d2-0b49-4ab4-9a0e-828e7fe8e6aa.jpg', 'https://vale.stweb.tv/vale/live/playlist.m3u8'),
(40, 'M3u8', 'Radios', 'Mega 98.3', 'https://mega.stweb.tv/mega983/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/d6/78/d678098c-2894-416d-b06e-1c17af65b247.jpg', 'https://mega.stweb.tv/mega983/live/playlist.m3u8'),
(43, 'M3u8', 'TV', 'DW Español', 'https://dwamdstream104.akamaized.net/hls/live/2015530/dwstream104/stream05/streamPlaylist.m3u8', 'https://yt3.googleusercontent.com/wp9csTLasAlwjq6Sj4WFIGc_FobrMjdAXbwqBQOylyhnsv0uSf4dDvv50DY1UX10hujeflBaqw=s160-c-k-c0x00ffffff-no-rj', 'https://dwamdstream104.akamaized.net/hls/live/2015530/dwstream104/stream05/streamPlaylist.m3u8'),
(44, 'M3u8', 'TV', 'Telesur', 'https://cdnesmain.telesur.ultrabase.net/mbliveMain/480p/playlist.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/TeleSUR.jpg/260px-TeleSUR.jpg', 'https://cdnesmain.telesur.ultrabase.net/mbliveMain/480p/playlist.m3u8'),
(45, 'M3u8', 'TV', 'RT - Russia TV', 'https://rt-esp.rttv.com/live/rtesp/playlist.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Russia-today-logo.svg/125px-Russia-today-logo.svg.png', 'https://rt-esp.rttv.com/live/rtesp/playlist.m3u8'),
(46, 'M3u8', 'TV', 'ABC Paraguay', 'https://d2e809bgs49c6y.cloudfront.net/live/d87c2b7b-9ecf-4e6e-b63b-b32772bd7851/live.isml/d87c2b7b-9ecf-4e6e-b63b-b32772bd7851.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Abc_color.PNG/320px-Abc_color.PNG', 'https://d2e809bgs49c6y.cloudfront.net/live/d87c2b7b-9ecf-4e6e-b63b-b32772bd7851/live.isml/d87c2b7b-9ecf-4e6e-b63b-b32772bd7851.m3u8'),
(47, 'M3u8', 'TV', 'Bolivia TV', 'https://video1.getstreamhosting.com:1936/8224/8224/playlist.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Bolivia_Tv.webp/150px-Bolivia_Tv.webp.png', 'https://video1.getstreamhosting.com:1936/8224/8224/playlist.m3u8'),
(48, 'M3u8', 'TV', 'Tennis Channel', 'https://tennischannel-intl-samsung-uk.amagi.tv/playlist.m3u8', 'https://upload.wikimedia.org/wikipedia/fr/thumb/4/4c/Logo_Tennis_Channel.svg/langfr-150px-Logo_Tennis_Channel.svg.png', 'https://tennischannel-intl-samsung-uk.amagi.tv/playlist.m3u8'),
(63, 'M3u8', 'TV', 'Caras TV', 'https://unlimited1-buenosaires.dps.live/carastv/carastv.smil/carastv/livestream3/chunks.m3u8?nimblesessionid=200822731', 'https://yt3.ggpht.com/WfGTtxnXkf6cMXAGZYuBAEVH2k_DKnZWBV7TSwih9k_KL2JzJdNnoT8kjg4L0lXYb1SHsSmJDys=s176-c-k-c0x00ffffff-no-rj-mo', 'https://caras.perfil.com/carastv'),
(64, 'M3u8', 'Radios', 'FM Horizonte', 'https://redirector.dps.live/hls-audio/4e252a65837b69e349d5d8c1033152b4/hztear/playlist/manifest/gotardisz/audio/now/livestream1.m3u8', 'https://static.mytuner.mobi/media/tvos_radios/948/horizonte-943-fm.86cdf312.png', 'https://horizonte.perfil.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abmradios`
--

CREATE TABLE `abmradios` (
  `id3` int(11) NOT NULL,
  `dato1` varchar(255) NOT NULL,
  `dato2` varchar(255) NOT NULL,
  `dato3` varchar(255) NOT NULL,
  `dato4` varchar(3000) NOT NULL,
  `dato5` varchar(3000) NOT NULL,
  `dato6` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `abmradios`
--

INSERT INTO `abmradios` (`id3`, `dato1`, `dato2`, `dato3`, `dato4`, `dato5`, `dato6`) VALUES
(1, 'aac', 'Radios', 'Mitre', 'https://playerservices.streamtheworld.com/api/livestream-redirect/AM790_56AAC.aac??dist=la100_webplayer', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Logo_Mitre_SA.svg/200px-Logo_Mitre_SA.svg.png', 'https://radiomitre.cienradios.com'),
(2, 'hls', 'Radios', 'Radio 10', 'https://radio10.stweb.tv/radio10/live/chunks.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/4a/57/4a57e7f4-c34e-4cc2-bd2c-b291bb105231.jpg', 'https://ar.radiocut.fm/radiostation/radio10/listen'),
(3, 'aac', 'Radios', 'Rivadavia', 'https://playerservices.streamtheworld.com/api/livestream-redirect/RIVADAVIAAAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/77/93/7793b356-44fe-4e77-a360-8b95dc9fc943.jpg', 'https://ar.radiocut.fm/radiostation/rivadavia/listen/'),
(4, 'aac', 'Radios', 'La Red', 'https://playerservices.streamtheworld.com/api/livestream-redirect/LA_RED_AM910AAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/11/07/11070b07-0331-4561-98c2-8c012f818238.png', 'https://ar.radiocut.fm/radiostation/lared/listen'),
(5, 'mp3', 'Radios', 'Continental', 'https://edge01.radiohdvivo.com/stream/continental', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/b6/33/b633f1a2-0449-4469-bebe-4a6c31ddd0b7.jpg', 'https://ar.radiocut.fm/radiostation/continental/'),
(6, 'mp3', 'Radios', 'La 100', 'https://playerservices.streamtheworld.com/api/livestream-redirect/FM999_56.mp3?dist=la100_webplayer', 'https://pbs.twimg.com/profile_images/1739713562463850496/oVrOTXbW_400x400.jpg', 'https://la100.cienradios.com/player/la100/'),
(7, 'hls', 'Radios', 'Urbana Play', 'https://vmf.edge-apps.net/playlist/urbana.m3u8/play.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/16/16/16168f46-4590-492e-9cd3-e13e75b345c7.jpg', 'https://ar.radiocut.fm/radiostation/urbana-play'),
(8, 'hls', 'Radios', 'Radio Con Vos', 'https://server1.stweb.tv/rcvos/live/playlist.m3u8', 'https://api.raddios.com/api/radios/12079/image/miniaturamovil?2024-05-02%2019:37:56', 'https://ar.radiocut.fm/radiostation/city/'),
(9, 'hls', 'Radios', 'El Observador', 'https://s8.stweb.tv/observador/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/a3/cc/a3ccd2a2-3da0-455f-b2b9-cdb5b25cb92b.jpg', 'https://ar.radiocut.fm/radiostation/observador/'),
(10, 'aac', 'Radios', 'Rock & Pop', 'https://playerservices.streamtheworld.com/api/livestream-redirect/ROCKANDPOPAAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/a4/60/a460888b-a89c-4873-81dc-3c5aae8defbf.jpg', 'https://ar.radiocut.fm/radiostation/rockandpop/'),
(11, 'mp3', 'Radios', 'Delta', 'https://cdn.instream.audio/:9069/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/1200X1200black_bg.png', 'https://ar.radiocut.fm/radiostation/delta/'),
(12, 'aac', 'Radios', 'Metro 95.1', 'https://playerservices.streamtheworld.com/api/livestream-redirect/METROAAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/8a/50/8a501c8a-63a8-4825-b061-417f35ce6a6f.png', 'https://ar.radiocut.fm/radiostation/metro951/'),
(13, 'mp3', 'Radios', 'Cadena 3', 'https://playerservices.streamtheworld.com/api/livestream-redirect/AM700.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/LOGO_CADENA3_final.png', 'https://ar.radiocut.fm/radiostation/cadena3/listen/'),
(14, 'mp3', 'Radios', 'Nacional', 'https://sa.mp3.icecast.magma.edge-access.net/sc_rad1', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/c7/0e/c70e3313-b4d1-4c8c-aa7c-1ea04d0e54fa.png', 'https://ar.radiocut.fm/radiostation/nacional870/listen/'),
(15, 'mp3', 'Radios', 'Ciudad - La once diez', 'https://media.radios.ar:1110/', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/2d/bb/2dbbcb74-3b2d-4b01-9c90-9776f48e7d70.jpg', 'https://ar.radiocut.fm/radiostation/ciudad/listen/'),
(16, 'aac', 'Radios', 'CNN Radio', 'https://unlimited2-ar.dps.live/cnn-ar/aac/icecast.audio', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/61/d7/61d7454a-58d1-450d-8068-e41f759fd82b.jpg', 'https://ar.radiocut.fm/radiostation/cnn-argentina/listen/'),
(17, 'mp3', 'Radios', 'Del Plata', 'https://streaming01.shockmedia.com.ar:10217/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/81/15/8115dc5b-4b76-4788-beda-cd76bd759c8a.png', 'https://ar.radiocut.fm/radiostation/delplata/'),
(18, 'aac', 'Radios', 'AM 750', 'https://playerservices.streamtheworld.com/api/livestream-redirect/AM750', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/1a/1c/1a1c34bb-fa46-42f4-b6e3-3018d647b6f8.png', 'https://ar.radiocut.fm/radiostation/am750/'),
(19, 'mp3', 'Radios', 'El Destape 1070', 'https://ipanel.instream.audio:7001/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/77/15/7715c20e-1c95-477e-bfa5-f48c20e8251b.png', 'https://ar.radiocut.fm/radiostation/destape-mundo/'),
(20, 'mp3', 'Radios', 'Los 40', 'https://edge06.radiohdvivo.com/stream/los40', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/18057973_1819667681392807_7736672080529991447_n.png', 'https://ar.radiocut.fm/radiostation/los40principales/'),
(21, 'mp3', 'Radios', 'Disney', 'https://playerservices.streamtheworld.com/api/livestream-redirect/DISNEY_ARG_BA.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/20140327055609-150.jpg', 'https://ar.radiocut.fm/radiostation/disney/'),
(22, 'hls', 'Radios', 'Pop Radio', 'https://popradio.stweb.tv/popradio/live/chunks.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/29/cf/29cf86b4-16ca-4309-bd50-e084f0c0dc1b.jpg', 'https://ar.radiocut.fm/radiostation/pop/listen/'),
(23, 'hls', 'Radios', 'Vale 97.5', 'https://vale.stweb.tv/vale/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/c9/2e/c92eb6d2-0b49-4ab4-9a0e-828e7fe8e6aa.jpg', 'https://ar.radiocut.fm/radiostation/vale/listen/'),
(24, 'mp3', 'Radios', 'Latina', 'http://streaming.latina101.com.ar:8080/RadioLatina', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/e3/97/e39746d6-51cd-4db3-8474-ddd193a39106.jpg', 'https://ar.radiocut.fm/radiostation/fmlatina/'),
(25, 'mp3', 'Radios', 'Mucha Radio', 'https://playerservices.streamtheworld.com/api/livestream-redirect/MUCHA_RADIO.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/8b/35/8b359cf2-25ea-4cce-b8bd-379416259d53.png', 'https://ar.radiocut.fm/radiostation/mucharadiofm89-5/'),
(26, 'mp3', 'Radios', 'TOP 104.9', 'https://radios.streamingdha.com.ar/8060/stream', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/12/60/12605ce4-f03a-4f97-b79e-17202d6fec7e.jpg', 'https://ar.radiocut.fm/radiostation/top-1049/listen/'),
(27, 'mp3', 'Radios', 'Aspen 102.3', 'https://playerservices.streamtheworld.com/api/livestream-redirect/ASPEN.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/Selection_087.png', 'https://ar.radiocut.fm/radiostation/aspen/'),
(28, 'mp3', 'Radios', 'FM Like - 89.5', 'https://playerservices.streamtheworld.com/api/livestream-redirect/FM_LLIKE.mp3', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/c4/79/c4792cdf-e646-4e56-af04-8a9abce12fa9.png', 'https://ar.radiocut.fm/radiostation/fm-like/listen/'),
(29, 'hls', 'Radios', 'One 103.7', 'https://one.stweb.tv/one/live/playlist.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/8d/ca/8dca129a-fe48-44e4-932f-c87d05de3eb6.jpg', 'https://ar.radiocut.fm/radiostation/tkm/listen/'),
(30, 'mp3', 'Radios', 'Vorterix', 'https://ice2.edge-apps.net/radio1_high-20057.audio', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/f6/a4/f6a43393-ee6d-48b4-aef2-8223f69429a3.jpg', 'https://ar.radiocut.fm/radiostation/vorterix'),
(31, 'hls', 'Radios', 'Mega 98.3', 'https://mega.stweb.tv/mega983/live/playlist.m3u8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/MEGA983.jpg/225px-MEGA983.jpg', 'https://ar.radiocut.fm/radiostation/mega983/listen/'),
(32, 'hls', 'Radios', 'Futurock', 'https://mdstrm.com/audio/5d9d019112cbbb45d6a50960/live.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/03_pWQ5vi8.jpg', 'https://ar.radiocut.fm/radiostation/futurock/'),
(33, 'mp3', 'Radios', 'Nacional Rock', 'https://sb.mp3.icecast.magma.edge-access.net/sc_rad39', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/22/af/22afb10a-205a-48a0-8b4c-d0024b33f368.png', 'https://ar.radiocut.fm/radiostation/nacrock/listen/'),
(34, 'mp3', 'Radios', 'Milenium', 'https://sonicpanel.hostradios.com/8002/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/logo_1.png', 'https://ar.radiocut.fm/radiostation/milenium/'),
(35, 'aac', 'Radios', 'Blue', 'https://playerservices.streamtheworld.com/api/livestream-redirect/BLUE_FM_100_7AAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/53/cf/53cfb96d-1c20-447d-b392-33ea3894de79.jpg', 'https://ar.radiocut.fm/radiostation/blue/'),
(36, 'hls', 'Radios', 'FM +107.5', 'https://5f700d5b2c46f.streamlock.net/fm1047/fm1047/chunklist_w1452532750.m3u8', 'https://mas1047.com.ar/wp-content/uploads/2023/03/cropped-Logo_final_1-1536x563.png', 'https://mas1047.com.ar/'),
(37, 'mp3', 'Radios', 'Amadeus FM 91.1', 'https://streamingradiolinks.xyz/8484/;', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/amadeus-150.jpg', 'https://ar.radiocut.fm/radiostation/amadeus/'),
(38, 'mp3', 'Radios', 'Cultura', 'https://usa5.fastcast4u.com/proxy/radiocultura?mp=/1', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/Logo_Cultura_E6m7qkM.jpeg', 'https://ar.radiocut.fm/radiostation/cultura/listen/'),
(39, 'mp3', 'Radios', 'La 2x4', 'https://media.radios.ar:9270/', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/2x4_logo_0.jpg', 'https://ar.radiocut.fm/radiostation/la-2x4/listen/'),
(40, 'mp3', 'Radios', 'Nacional Clásica', 'http://sa.mp3.icecast.magma.edge-access.net:7200/sc_rad37', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/fd/12/fd122394-569b-4fdd-ac4e-7655b8fbf692.png', 'https://ar.radiocut.fm/radiostation/nacclasica/listen/'),
(41, 'mp3', 'Radios', 'Nacional Folklórica', 'http://sa.mp3.icecast.magma.edge-access.net:7200/sc_rad38', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/e0/83/e083ebf6-c3e6-4cc6-a099-21d7be4e57bb.png', 'https://ar.radiocut.fm/radiostation/nacfolk/listen/'),
(42, 'hls', 'Radios', 'FM Pasión 102.7', 'https://stream.arcast.com.ar/pasionparana/pasionparana.stream/chunklist_w558339017.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/48/ff/48ff0304-bc2b-4a53-ad9f-ee0d974c3392.png', 'https://ar.radiocut.fm/radiostation/fm-pasion/listen/'),
(43, 'mp3', 'Radios', 'FM La Patriada', 'https://server.laradio.online/proxy/fm_la_patriada?mp=/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/32/52/32521a14-81d8-4f78-9fb5-e2a346d73445.jpg', 'https://ar.radiocut.fm/radiostation/patriada/'),
(44, 'aac', 'Radios', 'D Sport FM', 'https://24493.live.streamtheworld.com/DSPORTSRADIOAAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/b2/8b/b28b4baf-f329-4b84-9c75-2cbf837e2812.jpg', 'https://ar.radiocut.fm/radiostation/uno/listen/'),
(45, 'mp3', 'Radios', 'FM 92.2 Frecuencia Zero', 'https://cdn.instream.audio/stream/9508', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/LOGOS_FRECUENCIA_ZERO_PNG_PARA_PANTALLA.png', 'https://ar.radiocut.fm/radiostation/frecuenciazero/listen/'),
(46, 'mp3', 'Radios', 'FM Concepto 95.5', 'http://radios.solumedia.com:6002/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/concepto.png', 'https://ar.radiocut.fm/radiostation/concepto/listen/'),
(47, 'mp3', 'Radios', 'FM La Tribu', 'https://radio01.ferozo.com/proxy/ra01000659?mp=/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/la_tribu___radio_cut.jpg', 'https://ar.radiocut.fm/radiostation/latribu/listen/'),
(48, 'mp3', 'Radios', 'FM Late', 'https://radiolinksmedia.net.ar/8252', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/BBBBBBBBBBBBBBBBBB.jpg', 'https://ar.radiocut.fm/radiostation/late/listen/'),
(49, 'mp3', 'Radios', 'Led', 'https://cdn.instream.audio:9068/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/e0/84/e0844ae5-c305-49a9-9a3c-f4bbd9562f93.png', 'https://ar.radiocut.fm/radiostation/led/listen/'),
(50, 'mp3', 'Radios', 'Radio 87.5 - FM Soldados', 'https://radio02.ferozo.com/proxy/ra01000409?mp=/stream', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/b1/37/b137d00f-47bd-461b-87d1-82c9659e8bf9.png', 'https://ar.radiocut.fm/radiostation/fm-soldados'),
(51, 'hls', 'Radios', 'Radio JAI', 'https://vivo.solumedia.com:19360/jaitv/jaitv.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/2f/3a/2f3a53d7-8c70-4794-bebb-5a514587a221.png', 'https://ar.radiocut.fm/radiostation/jai/listen/'),
(52, 'mp3', 'Radios', 'Zónica', 'http://streamlky.alsolnet.com:443/radiozonica', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/logo_radio_zonica.jpg', 'https://ar.radiocut.fm/radiostation/zonica/listen/'),
(53, 'mp3', 'Radios', 'Radio Buenos Aires', 'https://nl.digitalrm.pt:8052/stream?hash=1589404921851.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/f5/5c/f55c9aa3-5b1d-40cb-927f-55ce23ee665e.png', 'https://ar.radiocut.fm/radiostation/buenosaires/listen/'),
(54, 'mp3', 'Radios', 'La RZ', 'https://streamlky.alsolnet.com/larz', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/larz.png', 'https://ar.radiocut.fm/radiostation/larz/listen/'),
(55, 'mp3', 'Radios', 'UBA 87.9', 'https://radiostreaming.rec.uba.ar:8000/LiveRadioUBA', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/bd/56/bd56c162-53f3-4b17-87e5-33bbdbe4d377.jpg', 'https://ar.radiocut.fm/radiostation/uba/listen/'),
(56, 'mp3', 'Radios', '97.9 Now', 'https://ipanel.instream.audio:7002/stream', 'https://static.mytuner.mobi/media/tvos_radios/239/now-979.0c923fbb.jpg', 'No tiene'),
(57, 'mp3', 'Radios', 'FM Bajo Flores', 'https://shaincast.caster.fm:24200/listen.mp3?authn161340ff17459063f69c172668555f3d', 'https://radioxradio.org/wp-content/uploads/2018/07/logo_XInAZTI.jpg', 'https://fmbajoflores.caster.fm/'),
(58, 'mp3', 'Radios', 'RE 107.3', 'https://ipanel.instream.audio:7014/stream', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/6e/7f/6e7f60b8-ab9c-4c89-8826-b23e00dc95aa.png', 'https://ar.radiocut.fm/radiostation/el-destape/'),
(59, 'mp3', 'Radios', 'Radio Urbana BA', 'https://server.ohradio.com.ar:7131/;', 'https://yt3.googleusercontent.com/ytc/AIdro_nezrYGMa3bGGGY3J9eDmmAlQ33Uuv7ypiqFclbgiMB2y8=s160-c-k-c0x00ffffff-no-rj', 'https://www.urbanaba.com.ar/'),
(60, 'mp3', 'Radios', 'Radio Estación Sur', 'http://88.198.9.174:8196/live', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/11/39/113973d5-3127-4d6a-8edd-13df1d78225b.png', 'https://ar.radiocut.fm/radiostation/estacionsur/listen/'),
(61, 'mp3', 'Radios', 'Radio SI', 'https://01.solumedia.com.ar:9038/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/b5/d3/b5d3d9d2-eb3a-4293-996a-89fab1bd18e3.png', 'https://ar.radiocut.fm/radiostation/si/listen/'),
(62, 'mp3', 'Radios', 'Brisas - MDQ', 'https://radio.ecolan.com:8443/stream.mp3', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/brisas.png', 'https://ar.radiocut.fm/radiostation/brisas/listen/'),
(63, 'mp3', 'Radios', 'Radio MDZ', 'https://streaming6.locucionar.com:24110/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/be/ef/beeff8f3-55fb-4728-80de-145c0d998450.jpg', 'https://ar.radiocut.fm/radiostation/mdzradio/listen/'),
(64, 'mp3', 'Radios', 'AM 1270 Provincia', 'https://streaming.provinciaradio.com.ar:7008/am', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/e7/82/e7821b81-415a-4312-bb98-44b4b1998c00.png', 'https://ar.radiocut.fm/radiostation/provincia/'),
(65, 'mp3', 'Radios', 'AM 1420 - RCV', 'https://us9.maindigitalstream.com/ssl/7192', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/d5/ff/d5fff68d-d28f-4aec-b6ed-075338f20973.png', 'https://ar.radiocut.fm/radiostation/dime-1420/'),
(66, 'mp3', 'Radios', 'AM 530', 'http://cdn.instream.audio:9288/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/9d/af/9daffd2f-b4dc-4e1e-8242-ee98a4e66ae9.jpg', 'https://ar.radiocut.fm/radiostation/madres/'),
(67, 'aac', 'Radios', 'AM 990 - Splendid', 'https://playerservices.streamtheworld.com/api/livestream-redirect/AM990AAC.aac', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/f7/f4/f7f40882-47be-4c56-b32a-89e11db8f992.png', 'https://ar.radiocut.fm/radiostation/splendid/'),
(68, 'mp3', 'Radios', 'Belgrano', 'http://server.laradio.online:25223/live.mp3', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/belgrano-150_HgjMYCC.jpg', 'https://ar.radiocut.fm/radiostation/belgrano650/listen/'),
(69, 'mp3', 'Radios', 'Colonia', 'https://streaming1.hostingmontevideo.com:7019/;', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/e0/19/e0196837-191d-4da3-835a-1b9ef7101294.jpg', 'https://ar.radiocut.fm/radiostation/colonia/'),
(70, 'mp3', 'Radios', 'AM 770 - Radio República', 'https://cdn.instream.audio:9582/stream', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/66/c8/66c828f8-5e2a-4184-94aa-7ecb74d419e0.jpg', 'https://ar.radiocut.fm/radiostation/cooperativa/listen/'),
(71, 'mp3', 'Radios', 'Eco Medios', 'http://ample-zeno-09.radiojar.com/uv3vkhw2qvduv', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/ba/c6/bac6bf5a-239c-4a27-8bd5-82ed0615ae46.png', 'https://ar.radiocut.fm/radiostation/ecomedios/listen/'),
(72, 'hls', 'Radios', 'Radio Perfil', 'https://jireh-1-hls-audio-ar-isp.dps.live/hls-audio/4e252a65837b69e349d5d8c1033152b4/perfil/playlist/manifest/gotardisz/audio/now/livestream1.m3u8', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/35/fc/35fc4cbd-900d-43de-a2af-d7603a657cc8.jpg', 'https://ar.radiocut.fm/radiostation/perfil/listen/'),
(73, 'mp3', 'Radios', 'Radio del Pueblo', 'https://streaming6.locucionar.com:24248/stream', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/Sin-t%C3%ADtulo-21-e1445546446549.png', 'https://ar.radiocut.fm/radiostation/el-pueblo/listen/'),
(74, 'mp3', 'Radios', 'Rebelde 740', 'http://servidor.01argentina.com.ar:6358', 'https://imgsvr.radiocut.site/get/crop/center/200/200/radio_logos/70/39/70396adc-6871-4dc6-9f8f-91796719a1d9.jpg', 'https://ar.radiocut.fm/radiostation/rebelde740/listen/'),
(75, 'No tiene', 'Radios', 'Conexión Abierta', 'No tiene', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/10644822_323294957850158_3425382894289691840_n.jpg', 'https://www.youtube.com/@ConexionAbiertaRadio/streams'),
(76, 'mp3', 'Radios', 'Radio Xmas', 'https://radiolinksmedia.net.ar/9504', 'https://radiomxmas.com.ar/wp-content/uploads/2022/11/cropped-Radio-MX-log03-bl-148x86.png', 'https://radiomxmas.com.ar/'),
(88, 'mp3', 'Radios', 'FM Boedo', 'https://www.youtube.com/watch?v=SDyhfXOsv_Y', 'https://yt3.ggpht.com/e-epc1eh9uGh_uZGarEYXmxUm9-073chOqYfsoXcBriRf0dvBY3wLStVO-9z2XnCSoxZ8Mi6=s48-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@FmBoedoRadio/streams'),
(89, 'hls', 'Radios', 'FM Horizonte', 'https://redirector.dps.live/hls-audio/4e252a65837b69e349d5d8c1033152b4/hztear/playlist/manifest/gotardisz/audio/now/livestream1.m3u8', 'https://static.mytuner.mobi/media/tvos_radios/948/horizonte-943-fm.86cdf312.png', 'https://horizonte.perfil.com/'),
(90, 'mp3', 'Radios', 'LN+ Música', 'https://stream.radio.co/s2ed3bec0a/listen', 'https://masmusica.lanacion.com.ar/assets/img/logo.svg', 'https://masmusica.lanacion.com.ar/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abmyoutube`
--

CREATE TABLE `abmyoutube` (
  `id1` int(11) NOT NULL,
  `dato1` varchar(255) NOT NULL,
  `dato2` varchar(255) NOT NULL,
  `dato3` varchar(255) NOT NULL,
  `dato4` varchar(3000) NOT NULL,
  `dato5` varchar(3000) NOT NULL,
  `dato6` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `abmyoutube`
--

INSERT INTO `abmyoutube` (`id1`, `dato1`, `dato2`, `dato3`, `dato4`, `dato5`, `dato6`) VALUES
(1, 'Youtube', 'TV', 'TN', 'cb12KmMMDJA', 'https://pbs.twimg.com/profile_images/962300034661396481/OzHK6TZr_400x400.jpg', 'https://www.youtube.com/@todonoticias/streams'),
(2, 'Youtube', 'TV', 'LN+', 'G5pHuBCqgrs', 'https://pbs.twimg.com/profile_images/1790004218088050689/nhev9ozZ_400x400.jpg', 'https://www.youtube.com/@lanacion/streams'),
(3, 'Youtube', 'TV', 'Crónica TV', 'avly0uwZzOE', 'https://pbs.twimg.com/profile_images/1780672316050903040/qqeOck2b_400x400.jpg', 'https://www.youtube.com/@cronicatv/streams'),
(4, 'Youtube', 'TV', 'C5N', 'N1Tfrn7hMWU', 'https://pbs.twimg.com/profile_images/1636356479190966273/3VB9Iw1j_400x400.jpg', 'https://www.youtube.com/@c5n/streams'),
(5, 'Youtube', 'TV', 'Telefé Noticias', 'MocwNxD7WJk', 'https://yt3.googleusercontent.com/OttUuKTaZLo0tUG6D9uG2_ZRIt7EaVN7_tVQIO4R3NHwb3QZdyBxK01CTn5JsOhVVdiAdUH2_nY=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@Telefenoticias/streams'),
(6, 'Youtube', 'TV', 'Canal 26', '9fkB8aDdSik', 'https://pbs.twimg.com/profile_images/1673638015703347207/oNdyztvD_400x400.jpg', 'https://www.youtube.com/@canal26/streams'),
(7, 'Youtube', 'TV', 'Canal 7', 'FQuoQhOSYdc', 'https://www.cultura.gob.ar/media/uploads/logotv.png', 'https://www.youtube.com/@TVPublicaArgentina/streams'),
(8, 'Youtube', 'TV', 'Canal de la Ciudad', 'h4ecrrdXz44', 'https://pbs.twimg.com/profile_images/1088570060887810048/IAlLnIgQ_400x400.jpg', 'https://www.youtube.com/@canalciudadba/streams'),
(9, 'Youtube', 'TV', 'Canal Rural', 'TFYv5NUESws', 'https://pbs.twimg.com/profile_images/1735669748287836161/ghWgAxj9_400x400.jpg', 'https://www.youtube.com/@canalrural/streams'),
(10, 'Youtube', 'TV', 'Quiero Música TV', '8Mw0YdKN2XY', 'https://yt3.googleusercontent.com/RCgPBJ7Jm5Wwfyx49lYbS4k0glQ8gyKx8mITJrJxe1mcq8KN0qaGqgrrY-2Tns64l48_T2uUgA=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@quieromusicatv/streams'),
(11, 'Youtube', 'TV', 'El Siete Mendoza', 'Vh8xmLBJtR8', 'https://yt3.googleusercontent.com/LPkwowY2codqCuMWnebTEV2qMilisd0RIjS59T5XmyqgCcTQSHlG_Rzs-EMzT9tI24VVdN2e=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@elsietemendoza/streams'),
(12, 'Youtube', 'TV', 'El Doce Córdoba', 'sFZe_RPnNSo', 'https://yt3.googleusercontent.com/ytc/AIdro_lFnSQTmKaiuNQ1PgUs7uUYgV0bjx0wc0CtYEZRbYbc8w=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@eldoce/streams'),
(13, 'Youtube', 'TV', 'América Tucumán', 'BV46Hf_98u0', 'https://yt3.googleusercontent.com/ytc/AIdro_kN2LLsDht_pqHhwPk-HuwI-ijyPuual4EiYk3MAXoqsNk=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@AmericaTucuman/streams'),
(14, 'Youtube', 'TV', 'TVE Noticias 24hs', 'fg3ROXkoS1E', 'https://yt3.googleusercontent.com/ytc/AIdro_kbUogYAMt4zNR7yq8JAh5DfwnDLaFhXqPOVzjXwWjJBm4=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@rtvenoticias/streams'),
(15, 'Youtube', 'TV', 'DW Español', 'Io5mt83nCcU', 'https://yt3.googleusercontent.com/wp9csTLasAlwjq6Sj4WFIGc_FobrMjdAXbwqBQOylyhnsv0uSf4dDvv50DY1UX10hujeflBaqw=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@dwespanol/streams'),
(16, 'Youtube', 'TV', 'France24 Español', 'Y-IlMeCCtIg', 'https://yt3.googleusercontent.com/ytc/AIdro_kzqAgL2TukPL1ijpuPdoOgU75Av9cdQVf0mahAZSySyA=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@France24_es/streams'),
(17, 'Youtube', 'TV', 'TVG - Galicia', 'AY83mDidQB0', 'https://yt3.googleusercontent.com/ytc/AIdro_m9WypGX4GSLj4_4JaCXfq-DEeDNkDYEjl3T2D6SQ3Ghw=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@TVG/streams'),
(18, 'Youtube', 'Radios', 'La 100', 'kIi0e2uAFNM', 'https://pbs.twimg.com/profile_images/1739713562463850496/oVrOTXbW_400x400.jpg', 'https://www.youtube.com/@La100/streams'),
(19, 'Youtube', 'Radios', 'Mitre', '90Q8buaTSes', 'https://yt3.ggpht.com/16og9ECrHM2PeYckRpSlrrFe6GWVjCPjmwOCCyqLXJY70I-jx1rV9kHB4lcgLWTAeQjdonwJig=s48-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@Radiomitre/streams'),
(20, 'Youtube', 'Radios', 'Pop Radio', 'pJ90srLwiuM', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/29/cf/29cf86b4-16ca-4309-bd50-e084f0c0dc1b.jpg', 'https://www.youtube.com/@popradio1015/streams'),
(21, 'Youtube', 'Radios', 'Radio 10', 'ZcDFHaP-2xM', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/4a/57/4a57e7f4-c34e-4cc2-bd2c-b291bb105231.jpg', 'https://www.youtube.com/@Radio10am/streams'),
(22, 'Youtube', 'Radios', 'Rivadavia', 'eAAOGaSsm74', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/77/93/7793b356-44fe-4e77-a360-8b95dc9fc943.jpg', 'https://www.youtube.com/@RadioRivadaviaAM630/streams'),
(23, 'Youtube', 'Radios', 'Urbana Play', 'Ii8O3K-54pA', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/16/16/16168f46-4590-492e-9cd3-e13e75b345c7.jpg', 'https://www.youtube.com/@UrbanaPlayFM/streams'),
(24, 'Youtube', 'Radios', 'Vale 97.5', 'g-9veP1HcLo', 'https://imgsvr.radiocut.site/get/crop/center/100/100/radio_logos/c9/2e/c92eb6d2-0b49-4ab4-9a0e-828e7fe8e6aa.jpg', 'https://www.youtube.com/@FMVale975/streams'),
(25, 'Youtube', 'TV', 'América TV (VPN Ext)', 'zcWXboTnous', 'https://i.imgur.com/qeC0Fk0.png', 'https://www.youtube.com/@americaenvivo/streams'),
(26, 'Youtube', 'Radios', 'Cadena 3', '7JsgZgJluiM', 'https://yt3.googleusercontent.com/ytc/AIdro_lZgLPX1GnDGQEFivYmOpdFh4Tv5CWQSpckhcdHPIZOI24=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@cadena3/streams'),
(27, 'Youtube', 'Radios', 'Continental', '7eelyjFs7Og', 'https://pbs.twimg.com/profile_images/1696993063644577792/IqXDde7Q_400x400.jpg', 'https://www.youtube.com/@radiocontinental590/streams'),
(28, 'Youtube', 'Radios', 'Mega 98.3', '3rNGLP0eIm4', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/MEGA983.jpg/225px-MEGA983.jpg', 'https://www.youtube.com/@Mega983FM/streams'),
(30, 'Youtube', 'TV', 'A24', 'QGpHLgRnrx4', 'https://yt3.googleusercontent.com/UUDeuubaQlPaVvvMJhseVjpR0n3g3bk1kBdyN8iTmbbvK371YcZqYDzzBxqbmerAnWRl21Lp=s160-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@A24com/streams'),
(33, 'Youtube', 'TV', 'Noticias Caracol', 'wKz4NUnCsy4', 'https://yt3.ggpht.com/GbWS4FAUjTkj5KinXso5MKfS2SAUvSs6L9jaslwWZCDOhPziHEBiPeQQAwAC2xEE-TRDeuRtfA=s48-c-k-c0x00ffffff-no-rj', 'https://www.youtube.com/@noticiascaracol/streams');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `tipo`) VALUES
(5, 'Ale', 'scrypt:32768:8:1$Vlczdl35Z9OwDMBx$d72cd74f1ac3edab370b9ac7d4f83bb0ab3fbca509046ba67d59f421a7b1e58fc06b102265866e6b0683058a6068dcce02217714cd38c35fa29ead504b25781b', 'Administrador'),
(9, 'Alejandra', 'scrypt:32768:8:1$HCnH3BBWVX3H8Jlt$db63bfd1eac3f398756e1cd01c641920cbdf7232e3f933d5e096b2744f6e275c48957795b4d277ccb68576f0f31e6ac110f1b1edf54c01b141f03fcd0ca8e0ae', 'Administrador'),
(10, 'Fernando', 'scrypt:32768:8:1$3x9jfaQx7PWBd0W5$1bf6d3cee51ae00b80f3b9c845045d67d6d32a433842e09e3b92a44b1b42e60348191ab7ac549ff5f04c4220f999978f4cfed6eb5542f3151b63c0fa8e70b76f', 'Editor'),
(11, 'Alvaro', 'scrypt:32768:8:1$O1hcGe4g1BPs4rw4$f6f32e81290de83d78d10e1d8c5147c5b357184d8c9cfdfb833d0c5cfa391247b0d411a74def9cc57c13a1768bd3d8853915be1354e15b45d353fa991a438dd1', 'Editor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajesusuario`
--

CREATE TABLE `mensajesusuario` (
  `id` int(11) NOT NULL,
  `dato1` varchar(255) NOT NULL,
  `dato2` varchar(255) NOT NULL,
  `dato3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensajesusuario`
--

INSERT INTO `mensajesusuario` (`id`, `dato1`, `dato2`, `dato3`) VALUES
(4, 'Ale T', 'ldjdfsjd', 'hola'),
(5, 'Alejandra', 'maria@gmail.com', 'Ver mensaje enviado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otrosdatos`
--

CREATE TABLE `otrosdatos` (
  `id4` int(11) NOT NULL,
  `Pais` varchar(255) NOT NULL,
  `Contenido` varchar(255) NOT NULL,
  `TipoTransmision` varchar(255) NOT NULL,
  `LinkAlternativo` varchar(3000) NOT NULL,
  `id1` int(11) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `id3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `otrosdatos`
--

INSERT INTO `otrosdatos` (`id4`, `Pais`, `Contenido`, `TipoTransmision`, `LinkAlternativo`, `id1`, `id2`, `id3`) VALUES
(1, 'Argentina', 'Noticias', 'TV Cable', 'https://tn.com.ar/', 1, NULL, NULL),
(2, 'Argentina', 'Noticias', 'TV Cable', 'https://www.lanacion.com.ar/', 2, NULL, NULL),
(3, 'Argentina', 'Noticias', 'TV Cable', 'https://www.cronica.com.ar/cronica-en-vivo/', 3, NULL, NULL),
(4, 'Argentina', 'Noticias', 'TV Cable', 'www.c5n.com', 4, NULL, NULL),
(5, 'Argentina', 'Noticias', 'TV Aire', 'https://noticias.mitelefe.com/', 5, NULL, NULL),
(6, 'Argentina', 'Noticias', 'TV Cable', 'https://www.canal26.com/', 6, NULL, NULL),
(7, 'Argentina', 'Variedades', 'Tv Aire', 'https://www.tvpublica.com.ar/', 7, NULL, NULL),
(8, 'Argentina', 'Variedades', 'TV Cable', 'https://buenosaires.gob.ar/secretariadecomunicacion/canal-de-la-ciudad', 8, NULL, NULL),
(9, 'Argentina', 'Variedades', 'TV Cable', 'https://www.elrural.com/', 9, NULL, NULL),
(10, 'Argentina', 'Música', 'TV Cable', 'https://www.qmusica.tv/', 10, NULL, NULL),
(11, 'Argentina', 'Variedades', 'TV Aire - Interior', 'https://www.elsietetv.com.ar/', 11, NULL, NULL),
(12, 'Argentina', 'Variedades', 'TV Aire - Interior', 'https://eldoce.tv/', 12, NULL, NULL),
(13, 'Argentina', 'Variedades', 'TV Aire - Interior', 'https://americatucuman.com/', 13, NULL, NULL),
(14, 'España', 'Noticias', 'TV Cable - Internacional', 'https://www.rtve.es/noticias/', 14, NULL, NULL),
(15, 'Alemania', 'Noticias', 'TV Cable - Internacional', 'https://www.dw.com/es/actualidad/s-30684', 15, NULL, NULL),
(16, 'Francia', 'Noticias', 'TV Cable - Internacional', 'https://www.france24.com/es/en-vivo', 16, NULL, NULL),
(17, 'España', 'Variedades', 'TV Cable - Internacional', 'https://crtvg.gal/', 17, NULL, NULL),
(18, 'Argentina', 'Música', 'Radio FM', 'https://la100.cienradios.com/', 18, NULL, NULL),
(19, 'Argentina', 'Variedades', 'Radio AM', 'https://radiomitre.cienradios.com/', 19, NULL, NULL),
(20, 'Argentina', 'Música', 'Radio FM', 'https://www.radiopop.fm/', 20, NULL, NULL),
(21, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radio10.com.ar/', 21, NULL, NULL),
(23, 'Argentina', 'Variedades', 'Radio FM', 'https://urbanaplayfm.com/', 23, NULL, NULL),
(24, 'Argentina', 'Música', 'Radio FM', 'https://www.radiovale.fm/', 24, NULL, NULL),
(25, 'Argentina', 'Variedades', 'TV Aire', 'https://www.americatv.com.ar/', 25, NULL, NULL),
(26, 'Argentina', 'Variedades', 'Radio FM', 'https://www.cadena3.com/', 26, NULL, NULL),
(27, 'Argentina', 'Variedades', 'Radio AM', 'https://www.continental.com.ar/', 27, NULL, NULL),
(28, 'Argentina', 'Música', 'Radio FM', 'https://www.radiomega.fm/', 28, NULL, NULL),
(30, 'Argentina', 'Noticias', 'TV Cable', 'https://www.a24.com/', 30, NULL, NULL),
(31, 'Argentina', 'Variedades', 'TV Aire', 'https://www.eltrecetv.com.ar/', NULL, 1, NULL),
(32, 'Argentina', 'Variedades', 'TV Aire', 'https://mitelefe.com/', NULL, 2, NULL),
(33, 'Argentina', 'Variedades', 'TV Aire', 'https://www.elnueve.com.ar/', NULL, 3, NULL),
(34, 'Argentina', 'Variedades', 'TV Aire', 'https://www.americatv.com.ar/', NULL, 4, NULL),
(35, 'Argentina', 'Variedades', 'TV Aire', 'https://www.canalnet.tv/', NULL, 5, NULL),
(36, 'Argentina', 'Noticias', 'TV Cable', 'https://www.a24.com/', NULL, 6, NULL),
(37, 'Argentina', 'Noticias', 'TV Cable', 'https://ipnoticias.ar/', NULL, 7, NULL),
(38, 'Internacional', 'Noticias', 'TV Cable', 'https://www.youtube.com/@dnewsok', NULL, 8, NULL),
(39, 'Argentina', 'Noticias', 'TV Cable', 'https://www.perfil.com/canal-e/vivo', NULL, 9, NULL),
(40, 'Argentina', 'Deportes', 'TV Cable', 'https://elgarage.com/', NULL, 10, NULL),
(41, 'Argentina', 'Variedades', 'TV Cable', 'https://www.canal26.com/telemax', NULL, 11, NULL),
(42, 'Argentina', 'Música', 'Radio FM', 'https://www.latina101.com.ar/', NULL, 12, NULL),
(43, 'Argentina', 'Música', 'TV Cable', 'https://www.canal26.com/musictop', NULL, 13, NULL),
(44, 'España', 'Noticias', 'TV Cable - Internacional', 'https://elpais.com', NULL, 14, NULL),
(45, 'México', 'Variedades', 'TV Cable - Internacional', 'https://www.lasestrellas.tv/', NULL, 15, NULL),
(46, 'México', 'Variedades', 'TV Cable - Internacional', 'https://www.tvazteca.com/', NULL, 16, NULL),
(47, 'Puerto Rico', 'Variedades', 'TV Cable', 'https://www.telemundo.com/', NULL, 17, NULL),
(48, 'Colombia', 'Variedades', 'TV Cable - Internacional', 'https://www.canalrcn.com/', NULL, 18, NULL),
(49, 'Colombia', 'Telenovelas', 'TV Cable - Internacional', 'https://www.canalrcn.com/', NULL, 19, NULL),
(50, 'España', 'Variedades', 'TV Cable - Internacional', 'https://www.rtve.es/', NULL, 20, NULL),
(51, 'España', 'Series', 'TV Cable - Internacional', 'https://www.rtve.es/', NULL, 21, NULL),
(52, 'Brasil', 'Variedades', 'TV Cable - Internacional', 'https://www.sbt.com.br/', NULL, 22, NULL),
(53, 'Internacional', 'Telenovelas', 'TV Cable - Internacional', 'https://pluto.tv/latam', NULL, 23, NULL),
(54, 'Bolivia', 'Telenovelas', 'TV Cable - Internacional', 'https://seo.tv.bo/nvls.html', NULL, 24, NULL),
(55, 'Argentina', 'Música', 'TV Cable', 'https://www.canal26.com/tierramia', NULL, 25, NULL),
(56, 'Argentina', 'Noticias', 'Radio FM', 'https://www.neura.media/', NULL, 26, NULL),
(57, 'Argentina', 'Variedades', 'TV Cable', 'https://www.unifetv.com/', NULL, 27, NULL),
(58, 'Argentina', 'Variedades', 'Radio FM', 'https://www.youtube.com/@ZyGProducciones', NULL, 28, NULL),
(59, 'Argentina', 'Variedades', 'Radio FM', 'https://futurock.fm/', NULL, 29, NULL),
(60, 'Argentina', 'Noticias', 'TV Cable', 'https://canal22web.com/', NULL, 30, NULL),
(61, 'Argentina', 'Noticias', 'Radio FM', 'https://radioconvos.com.ar/', NULL, 31, NULL),
(62, 'Argentina', 'Variedades', 'Radio FM', 'https://www.radiojai.com/', NULL, 32, NULL),
(63, 'Argentina', 'Noticias', 'Radio AM', 'https://radio.perfil.com/', NULL, 33, NULL),
(64, 'Argentina', 'Música', 'Radio FM', 'https://pasionparana.com.ar/', NULL, 34, NULL),
(65, 'Argentina', 'Música', 'Radio FM', 'https://www.radioone1037.fm/', NULL, 35, NULL),
(66, 'Argentina', 'Música', 'Radio FM', 'https://www.radiopop.fm/', NULL, 36, NULL),
(67, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radio10.com.ar/', NULL, 37, NULL),
(68, 'Argentina', 'Variedades', 'Radio FM', 'https://urbanaplayfm.com/', NULL, 38, NULL),
(69, 'Argentina', 'Música', 'Radio FM', 'https://www.radiovale.fm/', NULL, 39, NULL),
(70, 'Argentina', 'Música', 'Radio FM', 'ttps://www.radiomega.fm/', NULL, 40, NULL),
(73, 'Alemania', 'Noticias', 'TV Cable - Internacional', 'https://www.dw.com/es/actualidad/s-30684', NULL, 43, NULL),
(74, 'Venezuela', 'Noticias', 'TV Cable - Internacional', 'https://www.telesurtv.net/', NULL, 44, NULL),
(75, 'Rusia', 'Noticias', 'TV Cable - Internacional', 'https://actualidad.rt.com/', NULL, 45, NULL),
(76, 'Paraguay', 'Variedades', 'TV Cable - Internacional', 'https://www.abc.com.py/', NULL, 46, NULL),
(77, 'Bolivia', 'Variedades', 'TV Cable - Internacional', 'https://www.boliviatv.bo/principal/', NULL, 47, NULL),
(78, 'Internacional', 'Deportes', 'TV Cable - Internacional', 'https://www.youtube.com/channel/UCDitdIjOjS9Myza9I21IqzQ', NULL, 48, NULL),
(79, 'Argentina', 'Variedades', 'Radio AM', 'https://radiomitre.cienradios.com/', NULL, NULL, 1),
(80, 'Argentina', 'Variedades', 'Radio AM', 'https://rivadavia.com.ar/', NULL, NULL, 3),
(81, 'Argentina', 'Variedades', 'Radio AM', 'https://www.lared.am/', NULL, NULL, 4),
(82, 'Argentina', 'Música', 'Radio FM', 'https://fmrockandpop.com/', NULL, NULL, 10),
(89, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radio10.com.ar/', NULL, NULL, 2),
(90, 'Argentina', 'Variedades', 'Radio FM', 'https://urbanaplayfm.com/', NULL, NULL, 7),
(91, 'Argentina', 'Noticias', 'Radio FM', 'https://radioconvos.com.ar/', NULL, NULL, 8),
(92, 'Argentina', 'Noticias', 'Radio FM', 'https://elobservador1079.com.ar/', NULL, NULL, 9),
(102, 'Argentina', 'Variedades', 'Radio AM', 'https://www.continental.com.ar/', NULL, NULL, 5),
(103, 'Argentina', 'Música', 'Radio FM', 'https://la100.cienradios.com/', NULL, NULL, 6),
(111, 'Argentina', 'Variedades', 'Radio FM', 'https://fmdelta903.com/', NULL, NULL, 11),
(112, 'Argentina', 'Música', 'Radio FM', 'https://www.metro951.com/', NULL, NULL, 12),
(113, 'Argentina', 'Variedades', 'Radio FM', 'https://www.cadena3.com/', NULL, NULL, 13),
(114, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radionacional.com.ar/', NULL, NULL, 14),
(115, 'Argentina', 'Variedades', 'Radio AM', 'https://buenosaires.gob.ar/radiociudad', NULL, NULL, 15),
(116, 'Argentina', 'Variedades', 'Radio AM', 'https://cnnespanol.cnn.com/seccion/cnn-radio-argentina/', NULL, NULL, 16),
(117, 'Argentina', 'Variedades', 'Radio AM', 'https://amdelplata.com.ar/', NULL, NULL, 17),
(118, 'Argentina', 'Noticias', 'Radio AM', 'https://www.pagina12.com.ar/am750/radio-en-vivo', NULL, NULL, 18),
(119, 'Argentina', 'Noticias', 'Radio AM', 'https://www.eldestapeweb.com/eldestaperadio', NULL, NULL, 19),
(120, 'Argentina', 'Música', 'Radio FM', 'https://los40.com.ar/', NULL, NULL, 20),
(121, 'Argentina', 'Música', 'Radio FM', 'https://ar.radiodisney.com/', NULL, NULL, 21),
(122, 'Argentina', 'Música', 'Radio FM', 'https://www.radiopop.fm/', NULL, NULL, 22),
(123, 'Argentina', 'Música', 'Radio AM', 'https://www.radiovale.fm/', NULL, NULL, 23),
(124, 'Argentina', 'Música', 'Radio FM', 'https://www.latina101.com.ar/', NULL, NULL, 24),
(125, 'Argentina', 'Música', 'Radio FM', 'https://mucharadio.com.ar/', NULL, NULL, 25),
(126, 'Argentina', 'Música', 'Radio FM', 'https://www.top1049.com.ar/', NULL, NULL, 26),
(127, 'Argentina', 'Música', 'Radio FM', 'https://fmlike.com.ar/', NULL, NULL, 27),
(128, 'Argentina', 'Música', 'Radio FM', 'https://fmaspen.com/', NULL, NULL, 28),
(129, 'Argentina', 'Música', 'Radio FM', 'https://www.radioone1037.fm/', NULL, NULL, 29),
(130, 'Argentina', 'Variedades', 'Radio FM', 'https://www.vorterix.com/', NULL, NULL, 30),
(131, 'Argentina', 'Música', 'Radio FM', 'ttps://www.radiomega.fm/', NULL, NULL, 31),
(132, 'Argentina', 'Variedades', 'Radio FM', 'https://futurock.fm/', NULL, NULL, 32),
(133, 'Argentina', 'Música', 'Radio FM', 'https://www.radionacional.com.ar/nacional-rock/', NULL, NULL, 33),
(134, 'Argentina', 'Música', 'Radio FM', 'https://www.instagram.com/fmmilenium106.7/?hl=es', NULL, NULL, 34),
(135, 'Argentina', 'Música', 'Radio FM', 'https://bluefm.com.ar/', NULL, NULL, 35),
(136, 'Argentina', 'Variedades', 'Radio FM', 'https://www.youtube.com/@ZyGProducciones', NULL, NULL, 36),
(137, 'Argentina', 'Música', 'Radio FM', 'https://radioamadeus.com.ar/', NULL, NULL, 37),
(138, 'Argentina', 'Variedades', 'Radio Online', 'https://www.fmradiocultura.com.ar/', NULL, NULL, 38),
(139, 'Argentina', 'Música', 'Radio FM', 'https://buenosaires.gob.ar/secretariadecomunicacion/la-2x4', NULL, NULL, 39),
(140, 'Argentina', 'Música', 'Radio FM', 'https://www.radionacional.com.ar/nacional-clasica/', NULL, NULL, 40),
(141, 'Argentina', 'Música', 'Radio FM', 'https://www.radionacional.com.ar/nacional-folklorica-1/', NULL, NULL, 41),
(142, 'Argentina', 'Música', 'Radio FM', 'https://pasionparana.com.ar/', NULL, NULL, 42),
(143, 'Argentina', 'Noticias', 'Radio FM', 'https://fmlapatriada.com.ar/', NULL, NULL, 43),
(144, 'Argentina', 'Deportes', 'Radio FM', 'https://www.dsportsradio.com/', NULL, NULL, 44),
(145, 'Argentina', 'Variedades', 'Radio FM', 'https://frecuenciazero.ar/', NULL, NULL, 45),
(146, 'Argentina', 'Variedades', 'Radio FM', 'https://www.conceptofm.com.ar/', NULL, NULL, 46),
(147, 'Argentina', 'Variedades', 'Radio FM', 'https://fmlatribu.com/', NULL, NULL, 47),
(148, 'Argentina', 'Variedades', 'Radio FM', 'https://late931.com.ar/', NULL, NULL, 48),
(149, 'Argentina', 'Variedades', 'Radio FM', 'https://led.fm/', NULL, NULL, 49),
(150, 'Argentina', 'Variedades', 'Radio FM', 'https://www.argentina.gob.ar/ejercito/fmsoldados', NULL, NULL, 50),
(151, 'Argentina', 'Variedades', 'Radio FM', 'https://www.radiojai.com/', NULL, NULL, 51),
(152, 'Argentina', 'Variedades', 'Radio Online', 'https://www.radiozonica.com.ar/', NULL, NULL, 52),
(153, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radiobuenosaires.com.ar/', NULL, NULL, 53),
(154, 'Argentina', 'Variedades', 'Radio Online', 'https://larz.com.ar/', NULL, NULL, 54),
(155, 'Argentina', 'Variedades', 'Radio FM', 'https://www.uba.ar/ubaradio', NULL, NULL, 55),
(156, 'Argentina', 'Variedades', 'Radio FM', 'https://www.enlaradio.com.ar/now/', NULL, NULL, 56),
(157, 'Argentina', 'Variedades', 'Radio FM', 'https://fmbajoflores.caster.fm/', NULL, NULL, 57),
(158, 'Argentina', 'Noticias', 'Radio FM', 'https://www.eldestapeweb.com/eldestaperadio', NULL, NULL, 58),
(159, 'Argentina', 'Variedades', 'Radio FM', 'https://www.urbanaba.com.ar/', NULL, NULL, 59),
(160, 'Argentina', 'Variedades', 'Radio FM', 'https://radioestacionsur.org/', NULL, NULL, 60),
(161, 'Argentina', 'Variedades', 'Radio FM', 'https://www.radiosi.com.ar/', NULL, NULL, 61),
(162, 'Argentina', 'Variedades', 'Radio FM', 'https://radiobrisas.com/', NULL, NULL, 62),
(163, 'Argentina', 'Variedades', 'Radio FM', 'https://www.mdzol.com/mdzradio', NULL, NULL, 63),
(164, 'Argentina', 'Variedades', 'Radio AM', 'https://radioprovincia.gba.gob.ar/', NULL, NULL, 64),
(165, 'Argentina', 'Variedades', 'Radio AM', 'https://www.la1420.com.ar/', NULL, NULL, 65),
(166, 'Argentina', 'Variedades', 'Radio AM', 'https://am530somosradio.com/', NULL, NULL, 66),
(167, 'Argentina', 'Variedades', 'Radio AM', 'https://splendidam990.com/', NULL, NULL, 67),
(168, 'Argentina', 'Variedades', 'Radio AM', 'https://am570radioargentina.com.ar/', NULL, NULL, 68),
(169, 'Uruguay', 'Variedades', 'Radio AM', 'https://radiocolonia.com/', NULL, NULL, 69),
(170, 'Argentina', 'Variedades', 'Radio AM', 'https://r770.com.ar/', NULL, NULL, 70),
(171, 'Argentina', 'Variedades', 'Radio AM', 'https://ecomedios.com/', NULL, NULL, 71),
(172, 'Argentina', 'Noticias', 'Radio AM', 'https://radio.perfil.com/', NULL, NULL, 72),
(173, 'Argentina', 'Variedades', 'Radio AM', 'https://www.radiodelpueblo.com.ar/', NULL, NULL, 73),
(174, 'Argentina', 'Variedades', 'Radio AM', 'https://radiorebelde.ar/', NULL, NULL, 74),
(175, 'Argentina', 'Variedades', 'Radio Online', 'https://conexionabierta.com.ar/', NULL, NULL, 75),
(176, 'Argentina', 'Variedades', 'Radio Online', 'https://radiomxmas.com.ar/', NULL, NULL, 76),
(177, 'Colombia', 'Noticias', 'TV Cable - Internacional', 'https://www.noticiascaracol.com/', 33, NULL, NULL),
(184, 'Argentina', 'Moda', 'TV Cable', 'https://caras.perfil.com/carastv', NULL, 63, NULL),
(185, 'Argentina', 'Variedades', 'Radio FM', 'https://www.youtube.com/channel/UCbzmpuQOweW0DNp-9Y0tNjg', NULL, NULL, 88),
(186, 'Argentina', 'Música', 'Radio FM', 'https://www.radios-argentinas.org/horizonte-943-fm', NULL, NULL, 89),
(187, 'Argentina', 'Música', 'Radio FM', 'https://www.radios-argentinas.org/horizonte-943-fm', NULL, 64, NULL),
(188, 'Argentina', 'Música', 'Radio FM', 'https://www.lanacionmusica.com.ar/', NULL, NULL, 90);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abmm3u8`
--
ALTER TABLE `abmm3u8`
  ADD PRIMARY KEY (`id2`);

--
-- Indices de la tabla `abmradios`
--
ALTER TABLE `abmradios`
  ADD PRIMARY KEY (`id3`);

--
-- Indices de la tabla `abmyoutube`
--
ALTER TABLE `abmyoutube`
  ADD PRIMARY KEY (`id1`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajesusuario`
--
ALTER TABLE `mensajesusuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otrosdatos`
--
ALTER TABLE `otrosdatos`
  ADD PRIMARY KEY (`id4`),
  ADD UNIQUE KEY `youtube` (`id1`) USING BTREE,
  ADD UNIQUE KEY `m3u8` (`id2`) USING BTREE,
  ADD UNIQUE KEY `radios` (`id3`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abmm3u8`
--
ALTER TABLE `abmm3u8`
  MODIFY `id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `abmradios`
--
ALTER TABLE `abmradios`
  MODIFY `id3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `abmyoutube`
--
ALTER TABLE `abmyoutube`
  MODIFY `id1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mensajesusuario`
--
ALTER TABLE `mensajesusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `otrosdatos`
--
ALTER TABLE `otrosdatos`
  MODIFY `id4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `otrosdatos`
--
ALTER TABLE `otrosdatos`
  ADD CONSTRAINT `m3u8` FOREIGN KEY (`id2`) REFERENCES `abmm3u8` (`id2`),
  ADD CONSTRAINT `radios` FOREIGN KEY (`id3`) REFERENCES `abmradios` (`id3`),
  ADD CONSTRAINT `youtube` FOREIGN KEY (`id1`) REFERENCES `abmyoutube` (`id1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
