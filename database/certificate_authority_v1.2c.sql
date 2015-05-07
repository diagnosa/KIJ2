-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 04:47 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `certificate_authority`
--

-- --------------------------------------------------------

--
-- Table structure for table `csr`
--

CREATE TABLE IF NOT EXISTS `csr` (
`ID_REQ` int(5) NOT NULL,
  `COMMON_NAME` varchar(100) NOT NULL,
  `ORGANIZATION` varchar(100) NOT NULL,
  `ORGANIZATIONAL_UNIT` varchar(100) NOT NULL,
  `CITY_LOCALITY` varchar(50) NOT NULL,
  `STATE_PROVINCE` varchar(50) NOT NULL,
  `COUNTRY_REGION` varchar(50) NOT NULL,
  `PRIVATE_KEY` text NOT NULL,
  `CERTIFICATE` text NOT NULL,
  `DOMAIN_NAME` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `csr`
--

INSERT INTO `csr` (`ID_REQ`, `COMMON_NAME`, `ORGANIZATION`, `ORGANIZATIONAL_UNIT`, `CITY_LOCALITY`, `STATE_PROVINCE`, `COUNTRY_REGION`, `PRIVATE_KEY`, `CERTIFICATE`, `DOMAIN_NAME`, `username`) VALUES
(11, 'Stefanus Anggara', 'ITS', 'Informatika', 'Surabaya', 'Jawa Timur', 'Indonesia', '', '', 'wwww.stef_ang.com', 'stef_ang'),
(12, 'Stefanus Anggara', 'ITS', 'Informatika', 'Surabaya', 'Jawa Timur', 'Indonesia', '-----BEGIN CERTIFICATE-----\r\nMIIBrzCCARqgAwIBAgIBATALBgkqhkiG9w0BAQUwADAeFw0xNTA0MDcwMjM2NTla\r\nFw0xNjA1MDcwMjM2NTlaMAAwgZ0wCwYJKoZIhvcNAQEBA4GNADCBiQKBgQCrkYS0\r\nzk/FG642Ft3qGr3I8vAL/2edmu4L4avuqfQjJ3GQgzeR975myBhKDuNvu1fyzmIp\r\n0vUhjXdg1HhJnLdFR+4vS/eYuzfqzFuSSqfcVayX9bIJnlzrO5CxD1y38LlAL3xy\r\nFQ0CNvDxh01yW1Ou+RW4Zr8XzpxjQLCLNNdfwQIDAQABoz8wPTALBgNVHQ8EBAMC\r\nAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUg1TkIkXohlWQj0U1H8GYbaKz\r\nOT4wCwYJKoZIhvcNAQEFA4GBAJ45n68sGwqjJPju6yvRC/3ocJbR+XLfXzYc0aV/\r\n9A/lNlsDq/OcIXN/XbBLiDBPw5RZU3z1VGfDU1EBtPYdKIAr/Pla5QERNvfz4MF6\r\ns0AZUYjQ4+tB1izWlg8lnNWiseAUVIa7cAqakdjDOjDQa8ag6xqeLzud2iEmHl9o\r\nV/Jl\r\n-----END CERTIFICATE-----\r\n\r\n', '-----BEGIN RSA PRIVATE KEY-----\r\nMIICXQIBAAKBgQCrkYS0zk/FG642Ft3qGr3I8vAL/2edmu4L4avuqfQjJ3GQgzeR\r\n975myBhKDuNvu1fyzmIp0vUhjXdg1HhJnLdFR+4vS/eYuzfqzFuSSqfcVayX9bIJ\r\nnlzrO5CxD1y38LlAL3xyFQ0CNvDxh01yW1Ou+RW4Zr8XzpxjQLCLNNdfwQIDAQAB\r\nAoGAD8DvmD4lDMdmZZ9C5po1ZZkjc1tf2cgEmXQYbY4O4n14Mlm1UnXKEDXJjF9P\r\nZ46I9fAY1/5/zxvMyhTbkkxnQ+wzlZmcN0X4cfqIVbz52r3peogjIUqf9WlJNsJi\r\nX+ccrn/mWJQtSUeD59oI0PXRaWSZsNN7bg/dkCwosDrH3psCQQDCZlKQWGvA8883\r\n2J98kdrZnQKzUfCcdCdA7Ra+x7L4tMfDv7xC5wGlUxCxSKqyPjzQ7XN2tfjUDUuP\r\ny2sSaz9nAkEA4e8gaXCoWhFmnGXoJvneSZfpsb7bXxkJFL7aTRAAkhS6qIJwMVpS\r\nOxSBdyuU+s+RPKeCQN2gArRbY9vfkRj2lwJBAI1QxqoprMMKOVOWhHGQsa/JpIHo\r\niemhwjs/Xm53SxHikOkqg1d7CEY/OP43HecOuTUDuBDOvcCgnZI9RGuSTPcCQQDE\r\nV2PKXb3f78lFVwYlgPVc7SiIb/0CKqaKocTiPWrRiDQiJqDLMtvNPee4oWYphGKJ\r\n3GREbJUWZJgbMsOZu6DnAkB/ceR7weGxLmLs4ZTOpaP67PybC1ErP65gEbhkJJOC\r\nr591cYh2eThEmd+9ugxUMkdY5EgKMXEGk1nHQWk+k7Te\r\n-----END RSA PRIVATE KEY-----', 'www.lallala.com', 'stef_ang'),
(13, 'Stefanus Anggara', 'ITS', 'Informatika', 'Surabaya', 'Jawa Timur', 'Indonesia', '-----BEGIN CERTIFICATE-----\r\nMIIBrzCCARqgAwIBAgIBATALBgkqhkiG9w0BAQUwADAeFw0xNTA0MDcwMjQwMzZa\r\nFw0xNjA1MDcwMjQwMzZaMAAwgZ0wCwYJKoZIhvcNAQEBA4GNADCBiQKBgQC2Os7R\r\nbjvBJwtMQEBLvJqj5EXkZGAP3AP26sNlR8y/Ghugy43l4G+i+mgewxm00n/ODpcS\r\nhcR/RttgwotFDNr4Yx1CZUs6Hlx/hixOBw638PWc0lTAyBo1nQlO1yjEbOVl+OxF\r\nvxaEx2k2Kb5tCYUhvgdOgxcVN+KwGFqXon4v0wIDAQABoz8wPTALBgNVHQ8EBAMC\r\nAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU6KLLw0VuoIZ40EajSm+BMgG4\r\nER8wCwYJKoZIhvcNAQEFA4GBAHzu+YYzOPVtge6WZA0oTn88nZfQ/5L4dBCnvaeK\r\ndiBUt0Y2Ocx42pB8n5J78wQHjTFOywJ2Lt5ybF7H8rrdUQjMdszTnHaRuP/W1AUt\r\nWFev1S80KvCvjsY8P5YWFhdzQlzQoOb8xHGc4fKZ82uDSbIPwRIEyDl4aNHopYCh\r\nT9yp\r\n-----END CERTIFICATE-----\r\n\r\n', '-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQC2Os7RbjvBJwtMQEBLvJqj5EXkZGAP3AP26sNlR8y/Ghugy43l\r\n4G+i+mgewxm00n/ODpcShcR/RttgwotFDNr4Yx1CZUs6Hlx/hixOBw638PWc0lTA\r\nyBo1nQlO1yjEbOVl+OxFvxaEx2k2Kb5tCYUhvgdOgxcVN+KwGFqXon4v0wIDAQAB\r\nAoGAIMR9WQJp40cKjIkHJrdA1VSgTrvP3DozSkyXmxgolHp02lqP5vSPDm7ZlyJ8\r\n9ltdmOddufpsxXgvzXveACoaG354tp9QD9Xhn+a3vsHaomtOn7o/4uA4+OaQozyA\r\nnhVMSCjkpF4y+TmxgrKNGiIQhroGWyIZXctdLWH2F/bEI7kCQQD5UUBkMuSB4NaO\r\nPTi0l5B0fyHkAU4s/gqJBCMCmvNk2Cf0vL6PJwUht07xTskgkat+j/3z9e1Nbob9\r\nx4Vu6KCLAkEAux04CnFogEPhAe80DDxi6XWT8sFM6dFAlWd8KRrVGz9Q0zblw4Rq\r\nHZ02x//3hRiBQrZBRErQHZHUVf0YEeOO2QJBAK7hUXt3P1Xi8lzfkLEMR2WP76PR\r\nTpa8s4MchbpEGko4XP6MjlY3lp/pxtP44ZeY1mR2eDnx3TydNM86btw3DLUCQErO\r\nZq4+ItJM0PMuB7fwmHbPjAOcZjyAbPqOMeRZFuPaz1xx8S/Wi3oldVZGLlXmsx7R\r\nsIw2ALghqitqkSntuRkCQBEyez9a56p+1Lv3QoWKj6y6YPTKDEPO5qJiegTRUZlt\r\n25E76Ea+4+5EX3FMAZn0hhcnEoSQc/h3bblPRBMy0Z8=\r\n-----END RSA PRIVATE KEY-----', 'www.lallala.com', 'stef_ang'),
(14, 'Stefanus Anggara', 'ITS', 'Informatika', 'Surabaya', 'Jawa Timur', 'Indonesia', '-----BEGIN CERTIFICATE-----\r\nMIICUTCCAbygAwIBAgIBATALBgkqhkiG9w0BAQUwUTESMBAGA1UEBgwJSW5kb25l\r\nc2lhMQwwCgYDVQQKDANJVFMxEzARBgNVBAgMCkphd2EgVGltdXIxGDAWBgNVBAMM\r\nD3d3dy5sYWxsYWxhLmNvbTAeFw0xNTA0MDcwMjQyMTVaFw0xNjA1MDcwMjQyMTVa\r\nMFExEjAQBgNVBAYMCUluZG9uZXNpYTEMMAoGA1UECgwDSVRTMRMwEQYDVQQIDApK\r\nYXdhIFRpbXVyMRgwFgYDVQQDDA93d3cubGFsbGFsYS5jb20wgZ0wCwYJKoZIhvcN\r\nAQEBA4GNADCBiQKBgQCa7Ya9lQIko2+TuEJU/qMNlryDbRcjbuEIn6M4PGTGvYn+\r\nZULJVQlY0opUrhYxFPWMtus4J7sONtYH9I8IXRXLFOFw0NGla5aeWlGC6ToGo7UC\r\nPbdcU6BExN40kHouFFUO3pbCPcTep7z4MNouUetPVbzYJTtPtRlk09GtexerCQID\r\nAQABoz8wPTALBgNVHQ8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU\r\nAAntk9L9cfVRQ1u8J+HJdEJXBZgwCwYJKoZIhvcNAQEFA4GBAD1cdDrxrIdg0nUw\r\n9Al4EjvYutchfztx7nqqZHpj51iCmBSM1z5zVr0Nf6A80fUm+eFLsjLotfYj27g1\r\neCzd3xeROySlNv/HSc+jixtqkp/OIa8UgqgGqn7moyzRA/M9TUjL/pqkiVBYm/ub\r\nkiFYY/aTUq7dWMXUbc8xOY/csKib\r\n-----END CERTIFICATE-----\r\n\r\n', '-----BEGIN RSA PRIVATE KEY-----\r\nMIICXQIBAAKBgQCa7Ya9lQIko2+TuEJU/qMNlryDbRcjbuEIn6M4PGTGvYn+ZULJ\r\nVQlY0opUrhYxFPWMtus4J7sONtYH9I8IXRXLFOFw0NGla5aeWlGC6ToGo7UCPbdc\r\nU6BExN40kHouFFUO3pbCPcTep7z4MNouUetPVbzYJTtPtRlk09GtexerCQIDAQAB\r\nAoGAGTrCHQB1k2LcKjmw76dyBSX9eAedY4NMeTuJ+H/5R1YZcUirOh8zgPf0V/rr\r\nmT2ZCTvGjWQG9bcfXrdITave/ux8se9c+z35ftu5XsdGk+OZytOmC1AtqV5vhFa+\r\nvoLy3wxkd2rka0syNAAI4mCHo05c/DGBG1fwCMRET/BkacMCQQDh0j+vPQq7gACe\r\nP2r2RR+u02ZGMI/KW5N9+op7o++FsA+opYw81f6K64S98goIETQE31o/KQF050Jt\r\ngukj5U9jAkEAr6HitGTqcf4bBl1UDoJQGUn9aj82BnHJZLUu5wgtzDi+gwMAdNFR\r\nsx67ZE0zWrPQyeJP0faavm4DQefbuREVowJAKFXfnjNvCVKxyZJWTqrGH/oOmJbv\r\n+BsnWyc3OSJtFBoAkgUP6YXns3Sh/zOOayZ3fi9O9V0jr3fnO5xYfFrnNQJBAIQg\r\nfmOFs9YT+xK7rVvI7ydHQWznpuYMPh0ULPfDcGi9m50F6hb3zcW57fHUHjkzI3Rt\r\nW+0x31I5gxvWqLa+Qo8CQQDAH2ZTfOel+bnORToZuQ80PwFCLBgQb60qf4n4hMd+\r\nt97l0jRZTh2MtiMXGAuTcjGvSwj3JUOfcIhKrEWpGWDs\r\n-----END RSA PRIVATE KEY-----', 'www.lallala.com', 'stef_ang'),
(15, 'Stefanus Anggara', 'ITS', 'Informatika', 'Surabaya', 'Jawa Timur', 'Indonesia', '-----BEGIN CERTIFICATE-----\r\nMIICUTCCAbygAwIBAgIBATALBgkqhkiG9w0BAQUwUTESMBAGA1UEBgwJSW5kb25l\r\nc2lhMQwwCgYDVQQKDANJVFMxEzARBgNVBAgMCkphd2EgVGltdXIxGDAWBgNVBAMM\r\nD3d3dy5sYWxsYWxhLmNvbTAeFw0xNTA0MDcwMjQ0MTZaFw0xNjA1MDcwMjQ0MTZa\r\nMFExEjAQBgNVBAYMCUluZG9uZXNpYTEMMAoGA1UECgwDSVRTMRMwEQYDVQQIDApK\r\nYXdhIFRpbXVyMRgwFgYDVQQDDA93d3cubGFsbGFsYS5jb20wgZ0wCwYJKoZIhvcN\r\nAQEBA4GNADCBiQKBgQCBQ46mPUCYShP2kpAKyDJRm7+eU4vAQ+L8ENHOc5CMw1zF\r\n/faA5t19i/gKumF0/I0l9n+y60JqrUOaW9ywct/z5rMPSGJTJo7CFMnzesBwsK8T\r\n8vNpBkMFicd3QC4nkqRlqGE73yklaoGLtHqxRLo5cxXR/akXi35wV0gd9lxg5wID\r\nAQABoz8wPTALBgNVHQ8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU\r\njGCl00jeYjg0SdKI/GbsPh6lYmEwCwYJKoZIhvcNAQEFA4GBABEsiBN3FWA21UM6\r\nPE4UAznrTt74rOlfAFi7tZ1ap+ojsbyRucmJKlNNW1mYni2N6sCoDYQEUJGCtkef\r\nIe2bORT5O1fWAvtRR4utW4P/djaoziNsuA4EatZXNHXD6YNrXXHoDVR4FKACSowh\r\nzQwP05Ls+8Gpfdtj4GRSS7b5xRvI\r\n-----END CERTIFICATE-----\r\n\r\n', '-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQCBQ46mPUCYShP2kpAKyDJRm7+eU4vAQ+L8ENHOc5CMw1zF/faA\r\n5t19i/gKumF0/I0l9n+y60JqrUOaW9ywct/z5rMPSGJTJo7CFMnzesBwsK8T8vNp\r\nBkMFicd3QC4nkqRlqGE73yklaoGLtHqxRLo5cxXR/akXi35wV0gd9lxg5wIDAQAB\r\nAoGAARjot203r33u03NaY60KuE9L03U+xMq5Z422VOaoPc7+v54wnywr3yqhWBNN\r\noSeaWc3Q4bJGOw+YzlD5+57OBd8lg9PekYj9nqF6YV6FFc+6Z2vjQTXDg8td3Dmm\r\nfItpM4vJ/yZCpDdB09T/cn0cWOE2qqCGNPzXc8K136XaQ8ECQQCKcyeGl8YZwK2T\r\nWbp+dfByjq3RbthH7vxHRgdaRsSXmCss+mGKSxRhRQlwOkZmvquoKJdVnHf5VwQv\r\nHNtNUcxhAkEA7wPKSJaFRt3mSqy6B0dvJkCxxN5neW5357UCTKa4xSxORe1maEpK\r\ncuYcpw5/KfvdcskagtpiWQuwfe0gvBnyRwJAVzqkXZWEd7dA5US0TnbqTpL8iqaG\r\n2BOHmTRS75sEw+pY0ZbTG7mgFoTTpITi1FsvddxVNNhHcq5TcYeB2F5AIQJBALGL\r\nVTW6aeIMb0bFK6LAk3YM1IBy3NY9EuCRetXJerMsiDA1er65gLf86wfFIvzi1Mqx\r\nS/orkqamokHIZWqUs30CQD9bcxSPoVZ8YMAEyiLMwazV3KnPS+OAyiXMrY7rolbD\r\n9Wt3wiBvLHa/YDCFZ8L0Je+gu/rcMI8sE/x1TmYkJxY=\r\n-----END RSA PRIVATE KEY-----', 'www.lallala.com', 'stef_ang');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(1023) NOT NULL,
  `salt` varchar(1023) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `password`, `salt`, `email`) VALUES
('admin_lp', 'Admin', '8eb24065b65998f0cb2ba63cc330be2cd41f28bc23fcd45bacec617b45122445', '4dc4c4ab2dbc050a', 'admin@lp.if.its.ac.id'),
('stef_ang', 'Stefanus Anggara', 'c9d7a87348fa72c8e7822e9d4eb3ac1b9093cc0fcfbcb33386e9b291fe014cfc', '19134623389c17cb', 'anggara.stefanus@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csr`
--
ALTER TABLE `csr`
 ADD PRIMARY KEY (`ID_REQ`), ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csr`
--
ALTER TABLE `csr`
MODIFY `ID_REQ` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `csr`
--
ALTER TABLE `csr`
ADD CONSTRAINT `csr_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
