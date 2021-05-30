<?php

namespace Database\Seeders;

use App\Models\product;
use Illuminate\Database\Seeder;

class productSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // product::create([
        //     'name' => 'NVIDIA GEFORCE RTX 3060 Ti',
        //     'slug' => 'NVIDIA GEFORCE RTX 3060 Ti',
        //     'description' => '<ul class="ul">
        //                         <li>Memory Type: <b>GDDR6</b></li>
        //                         <li>Memory Size: <b>8 GB</b></li>
        //                         <li>Boost Clock: <b>1.67</b></li>
        //                        </ul>',
        //     'details' =>
        //     '<ul>
        //     <li>Powered by GeForce RTX 3060 Ti and Integrated with 8GB GDDR6 256-bit memory interface</li>
        //     <li>Core Clock : 1‎695 MHz (Reference Card: 1665 MHz)</li>
        //     <li>Display Ports : DisplayPort 1.4a *2 and HDMI 2.1 *2</li>
        //     <li>PCI-Express 4.0 Support</li>
        //     <li>WINDFORCE 2X Cooling System with alternate spinning fans</li>
        //     <li>RGB Fusion 2.0 – synchronize with other AORUS devices</li>
        //     <li>Protection metal back plate</li>
        //     <li>For Technical Support : Call us on1800220966</li>
        //     </ul>',
        //     'specification' =>
        //     '<tr>
        //     <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">NVIDIA CUDA Cores: </td>
        //     <td style="border: none;" class="px-5">4864</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
        //     <td class="px-5">1.67</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
        //     <td class="px-5">GDDR6</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
        //     <td class="px-5">256-bit</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Maximum Digital Resolution: </td>
        //     <td class="px-5">7680x4320</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Standard Display Connectors: </td>
        //     <td class="px-5">HDMI 2.1, 3x DisplayPort 1.4a</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Multi Monitor: </td>
        //     <td class="px-5">4</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
        //     <td class="px-5">8 GB</td>
        // </tr>
        // <tr>
        //     <td style="border-right: 1px solid #fff;" class="px-5">Base Clock: </td>
        //     <td class="px-5">1.41</td>
        // </tr>',
        //     'image_name' => '3060ti-main.jpg',
        //     'image_name1' => '3060ti2.jpg',
        //     'image_name2' => '3060ti.jpg',
        //     'image_name3' => '',
        //     'image_name4' => '',
        //     'price' => '39999',
        //     'sale_price' => '35900',
        //     'cat' => 'gcards',
        //     'brand' => 'nvdia'
        // ]);
        product::create([
            'name' => 'ZOTAC GAMING GeForce RTX 2070 MINI',
            'slug' => 'ZOTAC GAMING GeForce RTX 2070 MINI',
            'description' => '<ul class="ul">
                                <li>Memory Type: <b>GDDR6</b></li>
                                <li>Memory Size: <b>8 GB</b></li>
                                <li>Boost Clock: <b>Boost: 1620 MHz</b></li>
                               </ul>',
            'details' =>
            'The all-new generation of ZOTAC GAMING GeForce graphics cards are here. The powerful new GeForce RTX 2070 takes advantage of the cutting-edge NVIDIA Turing architecture to immerse you in incredible realism and performance in the latest games. The future of gaming starts here. Features: - IceStorm 2.0 - Super Compact - GDDR6 memory - OC Scanner Package Includes:- 1 x Graphics Card 1 x User Manual',
            'specification' =>
            '<tr>
            <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">Cuda Core : </td>
            <td style="border: none;" class="px-5">2304</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
            <td class="px-5">Boost: 1620 MHz</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
            <td class="px-5">GDDR6</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
            <td class="px-5">256-bit</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Power Consumption : </td>
            <td class="px-5">175W</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Display Output : </td>
            <td class="px-5">3 x DisplayPort,1 x HDMI 2.0 ,1 x DVI-D</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Multi Monitor: </td>
            <td class="px-5">4</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
            <td class="px-5">8 GB</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Warranty : </td>
            <td class="px-5">2 Years</td>
        </tr>',
            'image_name' => '2070-main.jpg',
            'image_name1' => '2070.jpg',
            'image_name2' => '20702.jpg',
            'image_name3' => '',
            'image_name4' => '',
            'price' => '42999',
            'sale_price' => '36599',
            'cat' => 'gcards',
            'brand' => 'zotac',
        ]);
        product::create([
            'name' => 'MSI GeForce RTX 2060 Super',
            'slug' => 'MSI GeForce RTX 2060 Super',
            'description' => '<ul class="ul">
                                <li>Memory Type: <b>GDDR6</b></li>
                                <li>Memory Size: <b>8 GB</b></li>
                                <li>Boost Clock: <b>Boost:1665 MHz</b></li>
                               </ul>',
            'details' =>
            'Geforce RTX is powered by NVIDIA Turing, the world\'s most advanced GPU architecture for gamers and creators. Get truly next-gen performance and features with dedicated AI and Ray tracing cores for the ultimate experience. The new GeForce RTX super series has even more Cores and higher clocks, bringing you performance that\'s up to 25% faster than the original RTX 20 Series and 6x faster than the previous-generation 10 Series GPUs. It\'s time to gear up and get super powers. Capture and share videos, screenshots, and livestreams with friends. Keep your drivers up to date and optimize your game settings. Geforce experience lets you do it all. It\'s the essential companion to your GeForce graphics card.',
            'specification' =>
            '<tr>
            <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">CORES : </td>
            <td style="border: none;" class="px-5">2176 Units</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
            <td class="px-5">Boost:1665 MHz</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
            <td class="px-5">GDDR6</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
            <td class="px-5">256-bit</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Power Consumption : </td>
            <td class="px-5">175W</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Display Output : </td>
            <td class="px-5">DisplayPort x 3 (v1.4) / HDMI 2.0b x 1</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">MAXIMUM RESOLUTION : </td>
            <td class="px-5">7680x4320</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
            <td class="px-5">8 GB</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Warranty : </td>
            <td class="px-5">2 Years</td>
        </tr>',
            'image_name' => '2060s-main.jpg',
            'image_name1' => '2060s.jpg',
            'image_name2' => '2060s2.jpg',
            'image_name3' => '',
            'image_name4' => '',
            'price' => '48750',
            'sale_price' => '36599',
            'cat' => 'gcards',
            'brand' => 'msi',
        ]);
        product::create([
            'name' => 'MSI Radeon RX 5600 XT',
            'slug' => 'MSI Radeon RX 5600 XT',
            'description' => '<ul class="ul">
                                <li>Memory Type: <b>GDDR6</b></li>
                                <li>Memory Size: <b>6 GB</b></li>
                                <li>Boost Clock: <b>Boost: 1620 MHz</b></li>
                               </ul>',
            'details' =>
            'Great gaming experiences are created by bending the rules. The all new RDNA powered Radeon RX 5600 series for exceptional performance and High-fidelity gaming. Take control with Radeon RX 5600 series and experience powerful, accelerated gaming customized for you. High-performance RDNA architecture was engineered to greatly enhance features like Radeon Image Sharpening, FidelityFX, and VR technologies3 for maximum performance and jaw-dropping gaming experiences. Get the competitive advantage with dramatically reduced input lag with Radeon Anti-Lag, get stutter-free, tear-free gaming with AMD Radeon FreeSync technology, and the latest Radeon Software for incredibly responsive and insanely immersive gameplay. Radeon RX 5600 series features new compute units, new instructions better suited for visual effects, and multi-level cache hierarchy for greatly reduced latency and highly responsive gaming.',
            'specification' =>
            '<tr>
            <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">CORES : </td>
            <td style="border: none;" class="px-5">2304 Units</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
            <td class="px-5">Boost: 1620 MHz</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
            <td class="px-5">GDDR6</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
            <td class="px-5">192-bit</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Interface : </td>
            <td class="px-5">PCI Express 4.0</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Display Output : </td>
            <td class="px-5">DisplayPort x 3 (v1.4) / HDMI 2.0b x 1</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">MAXIMUM RESOLUTION : </td>
            <td class="px-5">7680x4320</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
            <td class="px-5">6 GB</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Warranty : </td>
            <td class="px-5">2 Years</td>
        </tr>',
            'image_name' => '5600-main.jpg',
            'image_name1' => '2060s2.jpg',
            'image_name2' => '2060s.jpg',
            'image_name3' => '',
            'image_name4' => '',
            'price' => '38500',
            'sale_price' => '29200',
            'cat' => 'gcards',
            'brand' => 'msi',
        ]);
        product::create([
            'name' => 'ASUS TUF Radeon RX 6800',
            'slug' => 'ASUS TUF Radeon RX 6800',
            'description' => '<ul class="ul">
                                <li>Memory Type: <b>GDDR6</b></li>
                                <li>Memory Size: <b>16 GB</b></li>
                                <li>Boost Clock: <b>Boost: 2190 MHz</b></li>
                               </ul>',
            'details' =>
            '<ul>
                <li>Axial-tech fan design has been enhanced with more fan blades and a new rotation scheme.</li>
             <li>Dual ball fan bearings can last up to twice as long as sleeve bearing designs.</li>
             <li>An all-aluminum shroud, reinforced frame, and metal backplate enhance durability.</li>
                <li>MaxContact heat spreader features a super flat surface for improved thermal transfer.</li>
                <li>A 144-hour validation program puts cards through a series of stringent tests to ensure compatibility with the latest games.</li>
                <li>A vented backplate prevents hot air from recirculating through the cooling array.</li>
                <li>GPU Tweak II provides intuitive performance tweaking, thermal controls, and system monitoring.</li>
                <li>For Technical Support : Call us on1800220966</li>
                </ul>',
            'specification' =>
            '<tr>
            <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">CORES : </td>
            <td style="border: none;" class="px-5">3840 Units</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
            <td class="px-5">Boost: 2190 MHz</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
            <td class="px-5">GDDR6</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
            <td class="px-5">256-bit</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Power Consumption: </td>
            <td class="px-5">650W</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Display Output : </td>
            <td class="px-5">1 x (Native HDMI 2.1),3 x (Native DisplayPort 1.4a) HDCP Support Yes (2.3)</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
            <td class="px-5">16 GB</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Warranty : </td>
            <td class="px-5">2 Years</td>
        </tr>',
            'image_name' => 'asus6800-main.jpg',
            'image_name1' => 'asus6800.jpg',
            'image_name2' => 'asus68002.jpg',
            'image_name3' => '',
            'image_name4' => '',
            'price' => '95000',
            'sale_price' => '77099',
            'cat' => 'gcards',
            'brand' => 'asus',
        ]);
        product::create([
            'name' => 'NVIDIA GEFORCE RTX 3090',
            'slug' => 'NVIDIA GEFORCE RTX 3090',
            'description' => '<ul class="ul">
                                <li>Memory Type: <b>GDDR6X</b></li>
                                <li>Memory Size: <b>24 GB</b></li>
                                <li>Boost Clock: <b>1.70 GHz</b></li>
                               </ul>',
            'details' =>
            '<ul>
                <li>NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastest, most efficient GPU, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.</li>
             <li>2nd Generation RT Cores: Experience 2X the throughput of 1st gen RT Cores, plus concurrent RT and shading for a whole new level of ray tracing performance.</li>
             <li>3rd Generation Tensor Cores: Get up to 2X the throughput with structural sparsity and advanced AI algorithms such as DLSS. Now with support for up to 8K resolution, these cores deliver a massive boost in game performance and all-new AI capabilities.</li>
                <li>Axial-tech Fan Design has been newly tuned with a reversed central fan direction for less turbulence.</li>
                <li>Dual Ball Fan Bearings can last up to twice as long as sleeve bearing designs.</li>
                <li>Military-grade Capacitors and other TUF components enhance durability and performance.</li>
                <li>GPU Tweak II provides intuitive performance tweaking, thermal controls, and system monitoring.</li>
                <li>For Technical Support : Call us on1800220966</li>
                </ul>',
            'specification' =>
            '<tr>
            <td style="border: none;border-right: 1px solid #fff;" class="px-5 td-border">NVIDIA CUDA Cores: </td>
            <td style="border: none;" class="px-5">10496 Units</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Boost Clock: </td>
            <td class="px-5">1.70 GHz</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Type: </td>
            <td class="px-5">GDDR6X</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Interface Width: </td>
            <td class="px-5">384-bit</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Maximum Digital Resolution: </td>
            <td class="px-5">7680x4320</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Display Output : </td>
            <td class="HDMI 2.1, 3x DisplayPort 1.4a</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Memory Size: </td>
            <td class="px-5">24 GB</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #fff;" class="px-5">Warranty : </td>
            <td class="px-5">3 Years</td>
        </tr>',
            'image_name' => '3090-main.jpg',
            'image_name1' => '3090.jpg',
            'image_name2' => '30902.jpg',
            'image_name3' => '',
            'image_name4' => '',
            'price' => '133500',
            'sale_price' => '172499 ',
            'cat' => 'gcards',
            'brand' => 'nvdia',
        ]);
    }
}
