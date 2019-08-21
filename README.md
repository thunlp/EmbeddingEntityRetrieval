# EmbeddingEntityRetrival
The source codes of the paper "Explore Entity Embedding Effectiveness in Entity Retrieval".


## Main Baseline

There are codes for our main baselines:

- [An Empirical Study of Learning to Rank for Entity Search. SIGIR 2016](http://www.cs.cmu.edu/~cx/papers/An_Empirical_Study_of_Learning_to_Rank_for_Entity_Search.pdf)


## Entity Baseline (ELR)

We utilize ELR feature from this paper:

- [Exploiting Entity Linking in Queries for Entity Retrieval. ICTIR 2016](http://hasibi.com/files/ictir2016-elr.pdf)


## Results

The entity retrieval results.



<table>
  <thead>
  <tr>
    <th>Model</th>
    <th colspan="2">SemSearch ES</th>
    <th colspan="2">ListSearch</th>
    <th colspan="2">INEX-LD</th>
    <th colspan="2">QALD-2</th>
    <th colspan="2">Total</th>
  </tr>
  <tr >
    <td></td>
    <td markdown="span"><b>MAP</b><td ><b>P@10</b></td></td><td ><b>P@20</b></td>
    <td ><b>MAP</b><td ><b>P@10</b></td></td><td ><b>P@20</b></td>
    <td ><b>MAP</b><td ><b>P@10</b></td></td><td ><b>P@20</b></td>
    <td ><b>MAP</b><td ><b>P@10</b></td></td><td ><b>P@20</b></td>
    <td ><b>MAP</b><td ><b>P@10</b></td></td><td ><b>P@20</b></td>
   </tr>
  </thead>
  <tbody>
  <tr>
	<td ><b>Baseline(CA)</b></td>
	<td >0.3899</td><td >0.2908</td><td >0.2077</td>
	<td >0.2334</td><td >0.3130</td><td >0.2378</td>
	<td >0.1298</td><td >0.2900</td><td >0.2285</td>
	<td >0.1998</td><td >0.1500</td><td >0.1196</td>
	<td >0.2454</td><td >0.2540</td><td >0.1934</td>
  </tr>
  <tr>
	<td ><b>+ELR(CA)</b></td>
	<td >0.3880</td><td >0.3023</td><td >0.2150</td>
	<td >0.2443</td><td >0.3130</td><td >0.2422</td>
	<td >0.1275</td><td >0.2920</td><td >0.2335</td>
	<td >0.2074</td><td >0.1664</td><td >0.1282</td>
	<td >0.2472</td><td >0.2544</td><td >0.1945</td>
  </tr>
  <tr>
	<td ><b>+TransE(CA)</b></td>
	<td >0.4085</td><td >0.3023</td><td >0.2165</td>
	<td >0.2507</td><td >0.3304</td><td >0.2543</td>
	<td >0.1312</td><td >0.2860</td><td >0.2255</td>
	<td >0.2270</td><td >0.1700</td><td >0.1371</td>
	<td >0.2597</td><td >0.2639</td><td >0.1970</td>
  </tr>

  <tr style="border-bottom: 4px solid black">
  <td ><td ><b>Baseline(SVM)</b></td>
	<td >0.3895</td><td >0.3038</td><td >0.2169</td>
	<td >0.2323</td><td >0.3078</td><td >0.2513</td>
	<td >0.1350</td><td >0.2940</td><td >0.2345</td>
	<td >0.2229</td><td >0.1529</td><td >0.1257</td>
	<td >0.1925</td><td >0.2245</td><td >0.1798</td>
  </tr>
  <tr>	<td ><b>+ELR(SVM)</b></td>
	<td >0.3881</td><td >0.3046</td><td >0.2173</td>
	<td >0.2390</td><td >0.3148</td><td >0.2530</td>
	<td >0.1390</td><td >0.2980</td><td >0.2375</td>
	<td >0.2197</td><td >0.1671</td><td >0.1286</td>
	<td >0.2005</td><td >0.2307</td><td >0.1816</td>
  </tr>
  <tr>	<td ><b>+TransE(SVM)</b></td>
	<td >0.4061</td><td >0.3077</td><td >0.2196</td>
	<td >0.2439</td><td >0.3252</td><td >0.2565</td>
	<td >0.1392</td><td >0.2950</td><td >0.2365</td>
	<td >0.2278</td><td >0.1629</td><td >0.1321</td>
	<td >0.2054</td><td >0.2346</td><td >0.1881</td>
  </tr>

  </tbody>
</table>


## Citation

Explore Entity Embedding Effectiveness in Entity Retrieval. Zhenghao Liu, Chenyan Xiong, Maosong Sun and Zhiyuan Liu. In Proceedings of CCL. [Paper](http://nlp.csai.tsinghua.edu.cn/~lzh/publications/ccl2019.pdf)


## Contact
If you have questions, suggestions and bug reports, please email liuzhenghao0819@gmail.com.