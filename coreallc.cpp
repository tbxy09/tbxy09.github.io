int getMax(bool used[], int size)
{
	int maxx = 0;
	int t = 0;
	for (int i = 1; i <= size; i++){
		if (!used[i]){
			t++;
			maxx = max(maxx, t);
		}
		else{
			t = 0;
		}
	}
	return maxx;
}

int main()
{
	freopen("1.txt", "r", stdin);
	freopen("3.txt", "w", stdout);
	int T, cas = 1;
	scanf("%d", &T);
	while (T--)
	{
		memset(a, 0, sizeof(a));
		set<int> se[M];        //se[i]存储的是连续空闲数为i的所有机器编号
		vector<Query> vec;    //保存历史询问
		printf("Case #%d:\n", cas++);
		int n, m;
		scanf("%d%d", &n, &m);
		for (int i = 1; i <= n; i++)
		{
			scanf("%d", sz + i);
			se[sz[i]].insert(i);
		}
		while (m--)
		{
			char op[5];
			int t;
			scanf("%s%d", op, &t);
			if (op[0] == 'A')
			{
				int id = inf;
				for (int i = t; i < M; i++)
				{
					if (se[i].size())
					{
						id = min(id, *se[i].begin());
					}
				}
				if (id == inf)
				{
					puts("-1 -1");
					vec.push_back(Query(-1, -1, -1));
				}
				else
				{
					se[getMax(a[id], sz[id])].erase(id);
					int start = getStart(a[id], sz[id], t);
					printf("%d %d\n", id, start);
					for (int i = start; i <= start + t - 1; i++)
					{
						a[id][i] = true;
					}
					vec.push_back(Query(id, start, start + t - 1));
					se[getMax(a[id], sz[id])].insert(id);
				}
			}
			else{
				t--;
				if (vec[t].id == -1)    continue;
				int id = vec[t].id;
				se[getMax(a[id], sz[id])].erase(id);
				for (int i = vec[t].start; i <= vec[t].end; i++)
				{
					a[id][i] = false;
				}
				se[getMax(a[id], sz[id])].insert(id);
			}
		}
	}
}