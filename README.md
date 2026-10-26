# cmip6_nco

CMIP6 の海面水温 (tos) ファイルに NCO の `ncatted` で属性を追加するための小さなシェルスクリプト集です。
`area` 変数に `coordinates = "nav_lon nav_lat"` 属性を追加し、別ディレクトリに書き出します。

## 構成

| ファイル | 内容 |
| --- | --- |
| `add_area_coords.sh` | 本体。モデル名を引数に取り、`ncatted` を実行する |
| `IPSL-CM6A-LR-INCA_tos.sh` | 互換用ラッパー (`add_area_coords.sh IPSL-CM6A-LR-INCA` と同じ) |
| `IPSL-CM5A2-INCA_tos.sh` | 互換用ラッパー (`add_area_coords.sh IPSL-CM5A2-INCA` と同じ) |

## 入出力パス

- 入力: `/work/kajiyama/data/cmip6/raw/<MODEL>/tos/tos_Omon_<MODEL>_historical_r1i1p1f1_gn_185001-201412.nc`
- 出力: `/work/kajiyama/nco/cmip6/<MODEL>/tos/tos_Omon_<MODEL>_historical_r1i1p1f1_gn_185001-201412.nc`

出力先ディレクトリは事前に作成しておく必要があります。

## 実行方法

```sh
# 従来どおり
sh IPSL-CM6A-LR-INCA_tos.sh

# 任意のモデル (新しいモデルを追加する場合もスクリプトのコピーは不要)
sh add_area_coords.sh IPSL-CM5A2-INCA
```

NCO (`ncatted`) が PATH 上にあることが前提です。
