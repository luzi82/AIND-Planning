# Heuristic Analysis

## Performance Comparsion

All output are in output folder.  The plans of each problems are in the log files.

<table border=1>
<tr>
    <th>Algo</th><th>Problem</th>
    <th>Expansions</th><th>Goal Tests</th><th>New Nodes</th>
    <th>Plan length</th><th>Time</th>
    <th>Filename</th>
</tr>

<tr style='background-color:#dddddd'>
    <th>BFS</th><th>1</th>
    <td>43</td><td>56</td><td>180</td>
    <td>6</td><td>0.025</td>
    <td>p1s1.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>BFS</th><th>2</th>
    <td>3343</td><td>4609</td><td>30509</td>
    <td>9</td><td>11.67</td>
    <td>p2s1.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>BFS</th><th>3</th>
    <td>14663</td><td>18098</td><td>129631</td>
    <td>12</td><td>87.47</td>
    <td>p3s1.log</td>
</tr>

<tr>
    <th>DFS</th><th>1</th>
    <td>12</td><td>13</td><td>48</td>
    <td>12</td><td>0.006</td>
    <td>p1s3.log</td>
</tr>
<tr>
    <th>DFS</th><th>2</th>
    <td>582</td><td>583</td><td>5211</td>
    <td>575</td><td>2.641</td>
    <td>p2s3.log</td>
</tr>
<tr>
    <th>DFS</th><th>3</th>
    <td>627</td><td>628</td><td>5176</td>
    <td>596</td><td>2.836</td>
    <td>p3s3.log</td>
</tr>

<tr style='background-color:#dddddd'>
    <th>UCS</th><th>1</th>
    <td>55</td><td>57</td><td>224</td>
    <td>6</td><td>0.033</td>
    <td>p1s5.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>UCS</th><th>2</th>
    <td>4823</td><td>4825</td><td>43774</td>
    <td>9</td><td>37.190</td>
    <td>p2s5.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>UCS</th><th>3</th>
    <td>18235</td><td>18237</td><td>159716</td>
    <td>12</td><td>314.1</td>
    <td>p3s5.log</td>
</tr>

<tr>
    <th>A*HIP</th><th>1</th>
    <td>41</td><td>43</td><td>170</td>
    <td>6</td><td>0.039</td>
    <td>p1s9.log</td>
</tr>
<tr>
    <th>A*HIP</th><th>2</th>
    <td>1494</td><td>1496</td><td>13708</td>
    <td>9</td><td>12.13</td>
    <td>p2s9.log</td>
</tr>
<tr>
    <th>A*HIP</th><th>3</th>
    <td>5118</td><td>5120</td><td>45650</td>
    <td>12</td><td>115.1</td>
    <td>p3s9.log</td>
</tr>

<tr style='background-color:#dddddd'>
    <th>A*HPL</th><th>1</th>
    <td>7</td><td>9</td><td>28</td>
    <td>6</td><td>1.377</td>
    <td>p1s10.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>A*HPL</th><th>2</th>
    <td>13</td><td>15</td><td>123</td>
    <td>9</td><td>35.58</td>
    <td>p2s10.log</td>
</tr>
<tr style='background-color:#dddddd'>
    <th>A*HPL</th><th>3</th>
    <td>46</td><td>48</td><td>449</td>
    <td>14</td><td>178.2</td>
    <td>p3s10.log</td>
</tr>

</table>

* DFS is the quickest among all search algo.  However, it's plan length is highest.  Because DFS is not optimized for cost reduction.
* The number of expansion, Goal tests and New nodes of A-Star ignore-preconditions (A*HIP) and A-Star level-sum (A*HPL) are lowest among the 5 searches.  That is because A-star search use heuristic function to reduce number of search node.  However, the run time used is high.  Since the run time of heuristic function is high.
* Among 2 A-Star searchs, A-Star ignore-preconditions has lowest number of expansion, Goal tests and New nodes.  However, it use highest time since the heuristic function has heavy work load.
* For problem which have obvious good heuristic function, BFS and A-star with provided heuristic function can be a good chooce.  For more complex problem, we can consider A-star level sum as it can highly reduce search space.
